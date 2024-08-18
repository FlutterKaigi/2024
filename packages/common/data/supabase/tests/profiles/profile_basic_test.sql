BEGIN;

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
