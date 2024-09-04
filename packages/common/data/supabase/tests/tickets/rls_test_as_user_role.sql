BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

-- 事前準備: サンプルユーザを作成
DELETE FROM tickets;

-- 一般ユーザ
SELECT
  tests.create_supabase_user ('sample_user', 'example@example.com', '555-555-5555');

-- チケットを作成
INSERT INTO
  tickets (user_id, type)
VALUES
  (
    (
      SELECT
        id
      FROM
        auth.users
      WHERE
        email = 'example@example.com'
    ),
    'general'
  );

SELECT
  tests.authenticate_as ('sample_user');

SELECT
  plan (5);

-- 自分のチケットのみが読み取れること
SELECT
  results_eq ('SELECT COUNT(*) FROM tickets', ARRAY[1::bigint], '自分のチケットのみが読み取れること');

-- typeを変更できないこと
PREPARE update_type_throw AS
UPDATE tickets
SET
  type = 'sponsor_booth'
WHERE
  user_id = (
    SELECT
      id
    FROM
      auth.users
    WHERE
      email = 'example@example.com'
  );

SELECT
  throws_ok ('update_type_throw', '42501', 'new row violates row-level security policy for table "tickets"', 'typeを変更できないこと');

-- チケットを追加できないこと
PREPARE insert_throw AS
INSERT INTO
  tickets (user_id, type)
VALUES
  (gen_random_uuid (), 'general');

SELECT
  throws_ok ('insert_throw', '42501', 'new row violates row-level security policy for table "tickets"', 'チケットを追加できないこと');

-- チケットを削除できないこと
PREPARE delete_throw AS
DELETE FROM tickets
WHERE
  user_id = (
    SELECT
      id
    FROM
      auth.users
    WHERE
      email = 'example@example.com'
  );

SELECT
  throws_ok ('delete_throw', '42501', 'new row violates row-level security policy for table "tickets"', 'チケットを削除できないこと');

-- チケットが削除されていないことを確認
SELECT
  results_eq ('SELECT COUNT(*) FROM tickets', ARRAY[1::bigint], 'チケットが削除されていないこと');

SELECT
  *
FROM
  finish ();

ROLLBACK;
