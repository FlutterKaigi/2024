BEGIN;

-- 事前準備: スタッフを追加
DELETE FROM staff_social_networking_services;

DELETE FROM staffs;

INSERT INTO
  staffs (name, icon_name, greeting)
VALUES
  ('Sample Staff', 'sample_staff_icon.png', 'This is a sample staff');

INSERT INTO
  staff_social_networking_services (staff_id, type, value)
SELECT
  id,
  'github',
  'sample_staff'
FROM
  staffs
WHERE
  name = 'Sample Staff';

CREATE FUNCTION sample_staff_id () returns smallint AS $$
  SELECT
    id
  FROM
    staffs
  WHERE
    name = 'Sample Staff';
$$ language sql;

-- 事前準備: テスト用ユーザを作成
SELECT
  tests.create_supabase_user ('sample_user', 'example@example.com', 'password');

SELECT
  tests.authenticate_as ('sample_user');

SELECT
  plan (6);

SELECT
  has_table ('public', 'staff_social_networking_services', 'staff_social_networking_services テーブルが存在すること');

-- staff_social_networking_services テーブルの RLS が有効になっていること
SELECT
  tests.rls_enabled ('public', 'staff_social_networking_services');

SELECT
  results_eq ('SELECT staff_id FROM staff_social_networking_services', ARRAY[sample_staff_id ()], '任意のユーザはサンプルスタッフの SNS を読み取れること');

PREPARE insert_throw AS
INSERT INTO
  staff_social_networking_services (staff_id, type, value)
VALUES
  (sample_staff_id (), 'github', 'another_sample_staff');

SELECT
  throws_ok (
    'insert_throw',
    '42501',
    'new row violates row-level security policy for table "staff_social_networking_services"',
    '任意のユーザはスタッフの SNS を追加できないこと'
  );

-- スタッフの SNS を削除できないこと
DELETE FROM staff_social_networking_services;

SELECT
  results_eq ('SELECT COUNT(*) FROM staff_social_networking_services', ARRAY[1::bigint], 'スタッフの SNS を削除できていないこと');

-- スタッフの SNS を更新できないこと
PREPARE update_throw AS
UPDATE staff_social_networking_services
SET
  value = 'updated_sample_staff';

SELECT
  results_eq ('SELECT value FROM staff_social_networking_services', ARRAY['sample_staff'], 'スタッフの SNS を更新できていないこと');

SELECT
  *
FROM
  finish ();

ROLLBACK;
