BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

--　事前準備: サンプルユーザを作成
DELETE FROM profiles;

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

SELECT
  tests.authenticate_as ('sample_user');

SELECT
  plan (6);

SELECT
  results_eq ('SELECT name::text FROM profiles', ARRAY['sample_user'], '自分のプロフィールのみが読み取れること');

-- roleを変更できないこと
PREPARE update_role_throw AS
UPDATE profiles
SET ROLE = 'admin'
WHERE
  name = 'sample_user';

SELECT
  throws_ok ('update_role_throw', 'P0001', 'Updating "role" is not allowed', 'role を変更できないこと');

-- 名前を変更できること
UPDATE profiles
SET
  name = 'updated_sample_user'
WHERE
  name = 'sample_user';

SELECT
  results_eq ('SELECT name::text FROM profiles', ARRAY['updated_sample_user'], '名前を変更できること');

-- IDは変更できないこと
PREPARE update_id_throw AS
UPDATE profiles
SET
  id = gen_random_uuid ()
WHERE
  name = 'updated_sample_user';

SELECT
  throws_ok ('update_id_throw', 'P0001', 'Updating "id" is not allowed', 'IDを変更できないこと');

-- ユーザを追加できないこと
PREPARE insert_throw AS
INSERT INTO
  profiles (name, role)
VALUES
  ('another_sample_user', 'user');

SELECT
  throws_ok ('insert_throw', '42501', 'new row violates row-level security policy for table "profiles"', 'ユーザを追加できないこと');

--　ユーザを削除できないこと
DELETE FROM profiles;

SELECT
  results_eq ('SELECT COUNT(*) FROM profiles', ARRAY[1::bigint], 'ユーザを削除できていないこと');

SELECT
  *
FROM
  finish ();

ROLLBACK;
