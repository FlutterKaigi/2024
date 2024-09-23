BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

-- 事前準備: サンプルユーザとデータを作成
DELETE FROM profiles;

DELETE FROM profile_social_networking_services;

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

-- SNSアカウントを追加
INSERT INTO
  profile_social_networking_services (id, type, value)
VALUES
  (
    (
      SELECT
        id
      FROM
        profiles
      WHERE
        name = 'normal_user'
    ),
    'x',
    'normal_user_x'
  ),
  (
    (
      SELECT
        id
      FROM
        profiles
      WHERE
        name = 'admin_user'
    ),
    'github',
    'admin_user_github'
  );

-- 管理者としての認証
SELECT
  tests.authenticate_as ('admin_user');

SELECT
  plan (6);

-- テスト1: 全てのSNSアカウントが読み取れること
SELECT
  results_eq ('SELECT COUNT(*) FROM profile_social_networking_services', ARRAY[2::bigint], '管理者は全てのSNSアカウントを読み取れること');

-- テスト2: 他のユーザのSNSアカウントを更新できないこと、かつ値が変更されていないこと
SELECT
  results_eq (
    'SELECT value FROM profile_social_networking_services WHERE id = (SELECT id FROM profiles WHERE name = ''normal_user'')',
    ARRAY['normal_user_x'],
    '更新前の値を確認'
  );

UPDATE profile_social_networking_services
SET
  value = 'updated_normal_user_x'
WHERE
  id = (
    SELECT
      id
    FROM
      profiles
    WHERE
      name = 'normal_user'
  );

SELECT
  results_eq (
    'SELECT value FROM profile_social_networking_services WHERE id = (SELECT id FROM profiles WHERE name = ''normal_user'')',
    ARRAY['normal_user_x'],
    '更新が失敗し、値が変更されていないこと'
  );

-- テスト3: 新しいSNSアカウントを追加できないこと
PREPARE insert_new_sns AS
INSERT INTO
  profile_social_networking_services (id, type, value)
VALUES
  (
    (
      SELECT
        id
      FROM
        profiles
      WHERE
        name = 'normal_user'
    ),
    'github',
    'normal_user_github'
  );

SELECT
  throws_ok (
    'insert_new_sns',
    '42501',
    'new row violates row-level security policy for table "profile_social_networking_services"',
    '管理者は新しいSNSアカウントを追加できないこと'
  );

-- テスト4: SNSアカウントを削除できないこと
DELETE FROM profile_social_networking_services
WHERE
  id = (
    SELECT
      id
    FROM
      profiles
    WHERE
      name = 'normal_user'
  );

SELECT
  results_eq (
    'SELECT value FROM profile_social_networking_services WHERE id = (SELECT id FROM profiles WHERE name = ''normal_user'')',
    ARRAY['normal_user_x'],
    '削除が失敗し、値が変更されていないこと'
  );

-- テスト5: profiles_with_sns ビューを通じて全てのプロフィールとSNSアカウントを読み取れること
SELECT
  results_eq ('SELECT COUNT(*) FROM profiles_with_sns', ARRAY[2::bigint], '管理者はprofiles_with_snsビューを通じて全てのプロフィールとSNSアカウントを読み取れること');

SELECT
  *
FROM
  finish ();

ROLLBACK;
