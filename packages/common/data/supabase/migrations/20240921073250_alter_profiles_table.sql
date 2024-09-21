-- profilesテーブルにavatar_urlを追加
-- Google Sign inで取得したavatar_url, avatar_nameが空の場合はこちらを使用する
ALTER TABLE public.profiles
ADD COLUMN avatar_url text;

-- Supabase Auth　にユーザが追加されたときに profiles テーブルに追加する
CREATE
OR REPLACE function public.handle_new_user () returns trigger language plpgsql security definer
SET
  search_path = public AS $$
begin
  insert into public.profiles (id, avatar_url, name)
  values (
    new.id,
    new.raw_user_meta_data ->> 'avatar_url',
    new.raw_user_meta_data ->> 'name'
  );
  return new;
end;
$$;
