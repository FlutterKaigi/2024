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

SELECT
  tests.authenticate_as ('sample_user');

SELECT
  plan (1);

SELECT
  throws_ok (
    'SELECT * FROM stripe.checkout_sessions',
    '42501',
    'permission denied for schema stripe',
    '認証済みユーザは stripe.checkout_sessions を参照できないこと'
  );

SELECT
  *
FROM
  finish ();

ROLLBACK;
