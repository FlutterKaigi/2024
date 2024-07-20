BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers";

-- Pre-condition: Insert a sample sponsor
INSERT INTO
  sponsors (name, logo_name, description, url, type)
VALUES
  ('Sample Sponsor', 'sample_sponsor_logo.png', 'This is a sample sponsor', 'https://example.com', 'platinum');

SELECT
  plan (4);

SELECT
  tests.create_supabase_user ('sample_user', 'example@example.com', 'password');

SELECT
  tests.authenticate_as ('sample_user');

-- Check if sponsors table exists
SELECT
  has_table ('sponsors');

-- Check if RLS for sponsors table is enabled
SELECT
  tests.rls_enabled ('public', 'sponsors');

-- Check if the sample sponsor is present
SELECT
  results_eq ('SELECT name FROM sponsors', $$VALUES ('Sample Sponsor')$$, 'Sample sponsor is present');

-- 一般ユーザはスポンサーを追加できないこと
SELECT
  throws_ok (
    'INSERT INTO
sponsors (name, logo_name, description, url, type)
VALUES
  (
    ''another sample sponsor'',
    ''another_sample_sponsor_logo.png'',
    ''this is another sample sponsor'',
    ''https://example.com'',
    ''platinum''
  );
',
    '42501',
    'new row violates row-level security policy for table "sponsors"',
    '一般ユーザはスポンサーを追加できないこと'
  );

SELECT
  *
FROM
  finish ();

ROLLBACK;
