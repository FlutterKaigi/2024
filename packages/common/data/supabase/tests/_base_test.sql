BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

SELECT
  plan (1);

SELECT
  IS (TRUE, TRUE, 'true is true');

SELECT
  *
FROM
  finish ();

ROLLBACK;
