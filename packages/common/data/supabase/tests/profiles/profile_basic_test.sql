BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

SELECT
  plan (2);

SELECT
  has_table ('public', 'profiles', 'profiles テーブルが存在すること');

SELECT
  tests.rls_enabled ('public', 'profiles');

SELECT
  *
FROM
  finish ();

ROLLBACK;
