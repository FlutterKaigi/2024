CREATE TYPE public.role AS enum('admin', 'user', 'sponsor', 'speaker');

CREATE TABLE IF NOT EXISTS public.profiles (
  id UUID PRIMARY KEY REFERENCES auth.users ON DELETE cascade,
  name varchar(255) DEFAULT '' NOT NULL,
  role role DEFAULT 'user' NOT NULL,
  comment varchar(255) DEFAULT '' NOT NULL,
  avatar_id UUID REFERENCES storage.objects (id) ON DELETE SET NULL,
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

CREATE POLICY "Allow update own profile" ON public.profiles
FOR UPDATE
  TO authenticated USING (
    (
      SELECT
        auth.uid ()
    ) = id
  );

-- role の更新が含まれているかどうかをチェックする関数
CREATE
OR REPLACE function public.validate_profile_update () returns trigger language plpgsql AS $$
BEGIN
  IF NEW.role <> OLD.role THEN
    RAISE EXCEPTION 'Updating "role" is not allowed';
  END IF;

  RETURN NEW;
END;
$$;

-- role の更新を禁止するためのトリガー
CREATE TRIGGER before_profile_update before insert
OR
UPDATE ON profiles FOR each ROW WHEN (row_security_active('profiles'))
EXECUTE function validate_profile_update ();

-- Supabase Auth　にユーザが追加されたときに profiles テーブルにも追加する
CREATE FUNCTION public.handle_new_user () returns trigger language plpgsql security definer
SET
  search_path = '' AS $$
begin
  insert into public.profiles (id)
  values (new.id);
  return new;
end;
$$;

CREATE TRIGGER on_auth_user_created
AFTER insert ON auth.users FOR each ROW
EXECUTE procedure public.handle_new_user ();
