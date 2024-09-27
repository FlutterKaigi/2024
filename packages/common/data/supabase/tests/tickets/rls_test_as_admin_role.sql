BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

--　事前準備: サンプルAdminユーザを作成
DELETE FROM profiles;

-- ユーザとgeneralチケットを作成する関数
CREATE FUNCTION insert_user_and_ticket (input_role role) returns void AS $$
DECLARE
  user_name text;
  user_email text;
BEGIN
  user_name := 'sample_' || input_role;
  user_email := 'example_' || input_role || '@example.com';
  PERFORM tests.create_supabase_user (user_name, user_email);
  UPDATE profiles
  SET
    name = user_name,
    role = input_role
  WHERE
    id = (
      SELECT
        id
      FROM
        auth.users
      WHERE
        email = user_email
    );

    INSERT INTO tickets(user_id, type)
    VALUES
    ((
      SELECT
        id
      FROM
        auth.users
      WHERE
        email = user_email
    ), 'general');
END;
$$ language plpgsql;

-- 一般ユーザ
SELECT
  insert_user_and_ticket ('user');

-- Adminユーザを作成
SELECT
  insert_user_and_ticket ('admin');

SELECT
  tests.authenticate_as ('sample_admin');

SELECT
  plan (3);

SELECT
  results_eq ('SELECT COUNT(*) FROM tickets', ARRAY[2::bigint], '全てのチケットが読み取れること');

-- チケットを更新可能
UPDATE tickets
SET
  type = 'sponsor_speaker'
WHERE
  user_id = tests.get_supabase_uid ('sample_user');

SELECT
  results_eq (
    'SELECT type FROM tickets WHERE user_id = tests.get_supabase_uid(''sample_user'')',
    ARRAY['sponsor_speaker'::ticket_type],
    'チケットを更新できること'
  );

-- チケットを削除可能
DELETE FROM tickets;

SELECT
  results_eq ('SELECT COUNT(*) FROM tickets', ARRAY[0::bigint], 'チケットを削除できること');

SELECT
  *
FROM
  finish ();
