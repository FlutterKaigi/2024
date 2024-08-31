BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

-- 事前準備: スタッフを追加
DELETE FROM staff_social_networking_services;

DELETE FROM staffs;

INSERT INTO
  staffs (name, icon_name, greeting)
VALUES
  ('Sample Staff', 'sample_staff_icon.png', 'This is a sample staff');

-- 事前準備: テスト用ユーザを作成
SELECT
  tests.create_supabase_user ('sample_user', 'example@example.com', '444-444-4444');

SELECT
  tests.authenticate_as ('sample_user');

SELECT
  plan (6);

SELECT
  has_table ('public', 'staffs', 'staffs テーブルが存在すること');

-- staffs テーブルの RLS が有効になっていること
SELECT
  tests.rls_enabled ('public', 'staffs');

SELECT
  results_eq ('SELECT name FROM staffs', ARRAY['Sample Staff'], '任意のユーザはサンプルスタッフを読み取れること');

PREPARE insert_throw AS
INSERT INTO
  staffs (name, icon_name, greeting)
VALUES
  ('another sample staff', 'another_sample_staff_icon.png', 'this is another sample staff');

SELECT
  throws_ok ('insert_throw', '42501', 'new row violates row-level security policy for table "staffs"', '任意のユーザはスタッフを追加できないこと');

-- スタッフを削除できないこと
DELETE FROM staffs;

SELECT
  results_eq ('SELECT COUNT(*) FROM staffs', ARRAY[1::bigint], 'スタッフを削除できていないこと');

-- スタッフを更新できないこと
PREPARE update_throw AS
UPDATE staffs
SET
  name = 'updated sample staff';

SELECT
  results_eq ('SELECT name FROM staffs', ARRAY['Sample Staff'], 'スタッフを更新できていないこと');

SELECT
  *
FROM
  finish ();

ROLLBACK;
