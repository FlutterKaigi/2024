BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

SELECT
  plan (1);

SELECT
  has_foreign_table ('stripe', 'checkout_sessions', 'checkout_sessions テーブルが存在すること');

SELECT
  *
FROM
  finish ();

ROLLBACK;
