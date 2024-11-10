BEGIN;

SELECT
    dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
    schema extensions;

-- semverカラムを持つテーブル
CREATE TABLE package_version (
    id bigserial PRIMARY KEY,
    package_name text NOT NULL,
    package_semver semver NOT NULL -- semverカラム
);

SELECT
    plan (2);

-- 有効なレコードを追加
INSERT INTO
    package_version (package_name, package_semver)
VALUES
    ('supabase-js', (2, 2, 3, NULL, NULL)),
    ('supabase-js', (2, 0, 0, ARRAY['rc', '1'], NULL));

SELECT
    results_eq ('SELECT COUNT(*) FROM package_version', ARRAY[2::bigint], 'パッケージバージョンが2つあること');

-- 無効なレコードを追加しようとする (majorがnull)
SELECT
    throws_ok (
        $$ 
        INSERT INTO package_version (package_name, package_semver)
        VALUES ('invalid-js', (NULL, 1, 0, ARRAY['asdf'], NULL))
        $$,
        '23514',
        'value for domain semver violates check constraint "semver_check"',
        'パッケージバージョンを追加できないこと'
    );

SELECT
    *
FROM
    finish ();

ROLLBACK;
