BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

SELECT
  plan (3);

SELECT
  has_table ('public', 'tickets', 'tickets テーブルが存在すること');

SELECT
  has_type ('public', 'ticket_type', 'ticket_type enumが存在すること');

SELECT
  tests.rls_enabled ('public', 'tickets');

SELECT
  *
FROM
  finish ();

ROLLBACK;
