BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

-- 事前準備: サンプルユーザを作成
DELETE FROM profiles;

DELETE FROM profile_social_networking_services;

-- 一般ユーザ
SELECT
  tests.create_supabase_user ('sample_user', 'example@example.com', '555-555-5555');

-- 名前とロールを変更しておく
UPDATE profiles
SET
  name = 'sample_user',
  role = 'user'
WHERE
  id = (
    SELECT
      id
    FROM
      auth.users
    WHERE
      email = 'example@example.com'
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
        name = 'sample_user'
    ),
    'x',
    'sample_user'
  );

SELECT
  tests.authenticate_as ('sample_user');

SELECT
  plan (4);

-- 自分のSNSアカウントのみが読み取れること
SELECT
  results_eq ('SELECT value FROM profile_social_networking_services', ARRAY['sample_user'], '自分のSNSアカウントのみが読み取れること');

-- typeを変更できること
UPDATE profile_social_networking_services
SET
  type = 'github'::social_networking_service_type
WHERE
  value = 'sample_user';

SELECT
  results_eq ('SELECT type::text FROM profile_social_networking_services', ARRAY['github'], 'typeを変更できること');

-- valueを変更できること
UPDATE profile_social_networking_services
SET
  value = 'sample_user_2'
WHERE
  type = 'github'::social_networking_service_type;

SELECT
  results_eq ('SELECT value FROM profile_social_networking_services', ARRAY['sample_user_2'], 'valueを変更できること');

-- IDは変更できないこと
PREPARE update_id_throw AS
UPDATE profile_social_networking_services
SET
  id = gen_random_uuid ()
WHERE
  value = 'sample_user_2';

SELECT
  throws_ok (
    'update_id_throw',
    '42501',
    'new row violates row-level security policy for table "profile_social_networking_services"',
    'IDを変更できないこと'
  );

SELECT
  *
FROM
  finish ();

ROLLBACK;
