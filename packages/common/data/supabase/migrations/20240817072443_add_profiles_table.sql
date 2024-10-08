CREATE TYPE public.role AS enum('admin', 'user', 'sponsor', 'speaker');

CREATE TABLE IF NOT EXISTS public.profiles (
  id UUID PRIMARY KEY REFERENCES auth.users ON DELETE cascade,
  name varchar(255) DEFAULT '' NOT NULL,
  role role DEFAULT 'user' NOT NULL,
  comment varchar(255) DEFAULT '' NOT NULL,
  avatar_name text, -- https://[project_id].supabase.co/storage/v1/object/public/profile_avatars/[avatar_name]
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

ALTER TABLE public.profiles enable ROW level security;

CREATE POLICY "Users can read their own profile" ON public.profiles FOR
SELECT
  TO authenticated USING (
    (
      SELECT
        auth.uid ()
    ) = id
  );

CREATE FUNCTION public.role () returns role stable AS $$
    SELECT
        ROLE
    FROM
        public.profiles
    WHERE
        id = auth.uid ();
$$ language sql security definer
SET
  search_path TO 'public';

CREATE POLICY "Admin can read all profiles" ON public.profiles FOR
SELECT
  TO authenticated USING (role () = 'admin');

CREATE POLICY "Allow update own profile" ON public.profiles
FOR UPDATE
  -- 自分のプロフィールのみ更新できる
  TO authenticated USING (
    (
      (
        SELECT
          auth.uid ()
      ) = id
    )
    -- または、role が admin の場合
    OR role () = 'admin'
  );

-- (role の更新が含まれている && ロールがadminではない)かどうかをチェックする関数
CREATE
OR REPLACE function public.validate_profile_update () returns trigger language plpgsql AS $$
BEGIN
  -- roleの変更が含まれている　かつ　ロールがadminではない場合は、例外を発生させる
  IF NEW.role <> OLD.role AND role()::text <> 'admin' THEN
    RAISE EXCEPTION 'Updating "role" is not allowed';
  END IF;
  -- IDの変更が含まれている場合は、例外を発生させる
  IF NEW.id <> OLD.id THEN
    RAISE EXCEPTION 'Updating "id" is not allowed';
  END IF;

  RETURN NEW;
END;
$$;

CREATE TRIGGER before_profile_update before insert
OR
UPDATE ON profiles FOR each ROW WHEN (row_security_active('profiles'))
EXECUTE function validate_profile_update ();

-- Supabase Auth　にユーザが追加されたときに profiles テーブルに追加する
CREATE FUNCTION public.handle_new_user () returns trigger language plpgsql security definer
SET
  search_path = public AS $$
begin
  insert into public.profiles (id)
  values (new.id);
  return new;
end;
$$;

CREATE TRIGGER on_auth_user_created
AFTER insert ON auth.users FOR each ROW
EXECUTE procedure public.handle_new_user ();

-- Storageのセットアップ
INSERT INTO
  storage.buckets (id, name)
VALUES
  ('profile_avatars', 'profile_avatars');

CREATE POLICY "Allow read their own avatar & admin can read all avatars" ON storage.objects FOR
SELECT
  TO authenticated USING (
    (
      SELECT
        auth.uid () = owner
    )
    OR (role () = 'admin')
  );

CREATE POLICY "Allow upload for authenticated users" ON storage.objects FOR insert TO authenticated
WITH
  CHECK (
    bucket_id = 'profile_avatars'
    -- [auth.uid]/[*] のみアップロード可能
    AND (storage.foldername (name)) [1] = (
      SELECT
        auth.uid ()::text
    )
  );

CREATE POLICY "Allow update their own avatar" ON storage.objects
FOR UPDATE
  USING (
    (
      SELECT
        auth.uid () = owner
    )
  )
WITH
  CHECK (bucket_id = 'profile_avatars');
