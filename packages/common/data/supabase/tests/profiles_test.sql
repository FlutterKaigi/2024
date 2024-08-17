BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

--　事前準備: サンプルユーザを作成
DELETE FROM profiles;

SELECT
  tests.create_supabase_user ('sample_user', 'example@example.com', 'password');

SELECT
  tests.create_supabase_user ('sample_admin', 'example_admin@example.com', 'password');

SELECT
  tests.authenticate_as ('sample_user');

SELECT
  plan (3);

SELECT
  has_table ('public', 'profiles', 'profiles テーブルが存在すること');

-- profiles テーブルの RLS が有効になっていること
SELECT
  tests.rls_enabled ('public', 'profiles');

SELECT
  results_eq ('SELECT name FROM profiles', ARRAY['sample_user'], '自分のプロフィールのみが読み取れること');

SELECT
  *
FROM
  finish ();

ROLLBACK;
