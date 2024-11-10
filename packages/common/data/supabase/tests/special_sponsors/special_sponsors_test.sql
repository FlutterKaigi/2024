BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

-- 事前準備: 特別スポンサーを追加
DELETE FROM special_sponsors;

INSERT INTO
  special_sponsors (name, logo_name, description, url, type, sort_id)
VALUES
  (
    'Sample Special Sponsor',
    'sample_special_sponsor_logo.png',
    'This is a sample special sponsor',
    'https://example.com',
    'community',
    1
  );

-- 事前準備: テスト用ユーザを作成
SELECT
  tests.create_supabase_user ('sample_user', 'example@example.com', '444-444-4444');

SELECT
  tests.authenticate_as ('sample_user');

SELECT
  plan (6);

SELECT
  has_table ('public', 'special_sponsors', 'special_sponsors テーブルが存在すること');

-- special_sponsors テーブルの RLS が有効になっていること
SELECT
  tests.rls_enabled ('public', 'special_sponsors');

SELECT
  results_eq ('SELECT name FROM special_sponsors', ARRAY['Sample Special Sponsor'], '任意のユーザはサンプル特別スポンサーを読み取れること');

PREPARE insert_throw AS
INSERT INTO
  special_sponsors (name, logo_name, description, url, type, sort_id)
VALUES
  (
    'another special sponsor',
    'another_special_sponsor_logo.png',
    'this is another special sponsor',
    'https://example.com',
    'translation',
    2
  );

SELECT
  throws_ok (
    'insert_throw',
    '42501',
    'new row violates row-level security policy for table "special_sponsors"',
    '一般ユーザは特別スポンサーを追加できないこと'
  );

-- 特別スポンサーを削除できないこと
DELETE FROM special_sponsors;

SELECT
  results_eq ('SELECT COUNT(*) FROM special_sponsors', ARRAY[1::bigint], '特別スポンサーを削除できていないこと');

-- 特別スポンサーを更新できないこと
PREPARE update_throw AS
UPDATE special_sponsors
SET
  name = 'updated special sponsor';

SELECT
  results_eq ('SELECT name FROM special_sponsors', ARRAY['Sample Special Sponsor'], '特別スポンサーを更新できていないこと');

SELECT
  *
FROM
  finish ();

ROLLBACK;
