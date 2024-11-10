CREATE TYPE platform_type AS enum('android', 'ios');

-- アプリの最小バージョンを管理するテーブル
CREATE TABLE public.app_minimum_versions (
    id smallserial PRIMARY KEY NOT NULL,
    platform platform_type NOT NULL,
    app_version semver NOT NULL,
    app_version_text text generated always AS (semver_to_text (app_version)) stored,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
    UNIQUE (platform, app_version_text)
);

-- RLSを有効化
ALTER TABLE app_minimum_versions enable ROW level security;

-- 誰でも読み取り可能
CREATE POLICY "Everyone can read app_minimum_versions" ON app_minimum_versions FOR
SELECT
    USING (TRUE);

-- 管理者のみCRUD可能
CREATE POLICY "Admin can CRUD app_minimum_versions" ON app_minimum_versions FOR ALL TO authenticated USING (role () = 'admin');
