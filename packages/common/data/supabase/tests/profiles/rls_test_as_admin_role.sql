BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

--　事前準備: サンプルAdminユーザを作成
DELETE FROM profiles;

CREATE FUNCTION create_user (input_role role) returns void AS $$
DECLARE
  user_name text;
  user_email text;
BEGIN
  user_name := 'sample_' || input_role;
  user_email := 'example_' || input_role || '@example.com';
  PERFORM tests.create_supabase_user (user_name, user_email);
  UPDATE profiles
  SET
    name = user_name,
    role = input_role
  WHERE
    id = (
      SELECT
        id
      FROM
        auth.users
      WHERE
        email = user_email
    );
END;
$$ language plpgsql;

-- 一般ユーザ
SELECT
  create_user ('user');

-- Adminユーザを作成
SELECT
  create_user ('admin');

SELECT
  tests.authenticate_as ('sample_admin');

SELECT
  plan (7);

SELECT
  set_eq ('SELECT name::text FROM profiles', ARRAY['sample_user', 'sample_admin'], '全てのプロフィールが読み取れること');

-- 他人のrole変更**できる**こと
UPDATE profiles
SET ROLE = 'admin'
WHERE
  name = 'sample_user';

SELECT
  results_eq ('SELECT role::text FROM profiles WHERE name = ''sample_user''', ARRAY['admin'], 'role を変更できること');

-- 自分の名前の変更できること
UPDATE profiles
SET
  name = 'updated_sample_admin'
WHERE
  name = 'sample_admin';

SELECT
  row_eq ('SELECT 1 FROM profiles WHERE name = ''updated_sample_admin''', ROW (1), '自分の名前を変更できること');

-- 他人の名前を変更**できる**こと
UPDATE profiles
SET
  name = 'updated_sample_user'
WHERE
  name = 'sample_user';

SELECT
  set_eq ('SELECT name::text FROM profiles', ARRAY['updated_sample_user', 'updated_sample_admin'], '他人の名前を変更できること');

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
  results_eq ('SELECT COUNT(*) FROM profiles', ARRAY[2::bigint], 'ユーザを削除できていないこと');

SELECT
  *
FROM
  finish ();
