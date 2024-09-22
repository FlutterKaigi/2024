BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

SELECT
  tests.clear_authentication ();

SELECT
  plan (1);

SELECT
  throws_ok (
    'SELECT * FROM stripe.checkout_sessions',
    '42501',
    'permission denied for schema stripe',
    '未認証ユーザは stripe.checkout_sessions を参照できないこと'
  );

SELECT
  *
FROM
  finish ();

ROLLBACK;
