BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

-- 事前準備: スポンサーを追加
DELETE FROM sponsors;

INSERT INTO
  sponsors (name, logo_name, description, url, type)
VALUES
  ('Sample Sponsor', 'sample_sponsor_logo.png', 'This is a sample sponsor', 'https://example.com', 'platinum');

-- 事前準備: テスト用ユーザを作成
SELECT
  tests.create_supabase_user ('sample_user', 'example@example.com', 'password');

SELECT
  tests.authenticate_as ('sample_user');

SELECT
  plan (6);

SELECT
  has_table ('public', 'sponsors', 'sponsors テーブルが存在すること');

-- sponsors テーブルの RLS が有効になっていること
SELECT
  tests.rls_enabled ('public', 'sponsors');

SELECT
  results_eq ('SELECT name FROM sponsors', ARRAY['Sample Sponsor'], '任意のユーザはサンプルスポンサーを読み取れること');

PREPARE insert_throw AS
INSERT INTO
  sponsors (name, logo_name, description, url, type)
VALUES
  (
    'another sample sponsor',
    'another_sample_sponsor_logo.png',
    'this is another sample sponsor',
    'https://example.com',
    'platinum'
  );

SELECT
  throws_ok ('insert_throw', '42501', 'new row violates row-level security policy for table "sponsors"', '任意のユーザはスポンサーを追加できないこと');

-- スポンサーを削除できないこと
DELETE FROM sponsors;

SELECT
  results_eq ('SELECT COUNT(*) FROM sponsors', ARRAY[1::bigint], 'スポンサーを削除できていないこと');

-- スポンサーを更新できないこと
PREPARE update_throw AS
UPDATE sponsors
SET
  name = 'updated sample sponsor';

SELECT
  results_eq ('SELECT name FROM sponsors', ARRAY['Sample Sponsor'], 'スポンサーを更新できていないこと');

SELECT
  *
FROM
  finish ();

ROLLBACK;
