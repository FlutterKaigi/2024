BEGIN;

SELECT
    dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
    schema extensions;

-- 事前準備: テストデータを削除
DELETE FROM app_minimum_versions;

-- 事前準備: テストデータを追加
INSERT INTO
    app_minimum_versions (platform, app_version)
VALUES
    ('android', (1, 0, 0, NULL, NULL)),
    ('ios', (1, 0, 0, NULL, NULL));

-- 管理者ユーザを作成
SELECT
    tests.create_supabase_user ('admin_user', 'admin@example.com', '555-555-5555');

UPDATE profiles
SET
    name = 'admin_user',
    role = 'admin'
WHERE
    id = (
        SELECT
            id
        FROM
            auth.users
        WHERE
            email = 'admin@example.com'
    );

-- 一般ユーザを作成
SELECT
    tests.create_supabase_user ('normal_user', 'user@example.com', '555-555-5556');

UPDATE profiles
SET
    name = 'normal_user',
    role = 'user'
WHERE
    id = (
        SELECT
            id
        FROM
            auth.users
        WHERE
            email = 'user@example.com'
    );

SELECT
    plan (9);

-- テーブルの存在確認
SELECT
    has_table ('public', 'app_minimum_versions', 'app_minimum_versions テーブルが存在すること');

-- RLSが有効になっていることを確認
SELECT
    tests.rls_enabled ('public', 'app_minimum_versions');

-- 一般ユーザーとして認証
SELECT
    tests.authenticate_as ('normal_user');

-- 一般ユーザーは読み取りのみ可能
SELECT
    results_eq ('SELECT COUNT(*) FROM app_minimum_versions', ARRAY[2::bigint], '一般ユーザーはapp_minimum_versionsを読み取れること');

-- 一般ユーザーは追加不可
PREPARE insert_throw AS
INSERT INTO
    app_minimum_versions (platform, app_version)
VALUES
    ('android', (1, 1, 0, NULL, NULL));

SELECT
    throws_ok (
        'insert_throw',
        '42501',
        'new row violates row-level security policy for table "app_minimum_versions"',
        '一般ユーザーはapp_minimum_versionsを追加できないこと'
    );

-- 一般ユーザーは更新不可
PREPARE update_throw AS
UPDATE app_minimum_versions
SET
    app_version = (1, 1, 0, NULL, NULL)
WHERE
    platform = 'android'
    AND app_version_text = '1.0.0';

SELECT
    results_eq (
        'SELECT app_version_text FROM app_minimum_versions WHERE platform = ''android'' ORDER BY app_version_text DESC LIMIT 1',
        ARRAY['1.0.0'],
        '一般ユーザーはapp_minimum_versionsを更新できないこと'
    );

-- 一般ユーザーは削除不可
PREPARE delete_throw AS
DELETE FROM app_minimum_versions
WHERE
    platform = 'android';

SELECT
    results_eq ('SELECT COUNT(*) FROM app_minimum_versions', ARRAY[2::bigint], '一般ユーザーはapp_minimum_versionsを削除できないこと');

-- 管理者として認証
SELECT
    tests.authenticate_as ('admin_user');

-- 管理者は追加可能
INSERT INTO
    app_minimum_versions (platform, app_version)
VALUES
    ('android', (1, 1, 0, NULL, NULL));

SELECT
    results_eq ('SELECT COUNT(*) FROM app_minimum_versions', ARRAY[3::bigint], '管理者はapp_minimum_versionsを追加できること');

-- 管理者は更新可能
UPDATE app_minimum_versions
SET
    app_version = (1, 2, 0, NULL, NULL)
WHERE
    platform = 'android'
    AND app_version_text = '1.1.0';

SELECT
    results_eq (
        'SELECT app_version_text FROM app_minimum_versions WHERE platform = ''android'' ORDER BY app_version_text DESC LIMIT 1',
        ARRAY['1.2.0'],
        '管理者はapp_minimum_versionsを更新できること'
    );

-- 管理者は削除可能
DELETE FROM app_minimum_versions
WHERE
    platform = 'android'
    AND app_version_text = '1.2.0';

SELECT
    results_eq ('SELECT COUNT(*) FROM app_minimum_versions', ARRAY[2::bigint], '管理者はapp_minimum_versionsを削除できること');

SELECT
    *
FROM
    finish ();

ROLLBACK;
