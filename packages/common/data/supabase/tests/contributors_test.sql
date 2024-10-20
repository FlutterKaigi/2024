BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

-- 事前準備: コントリビューターを追加
DELETE FROM contributors;

INSERT INTO
  contributors (name, avatar_url, contribution_count)
VALUES
  ('Sample Contributor', 'https://example.com/avatar.png', 10);

-- 一般ユーザを作成
SELECT
  tests.create_supabase_user ('normal_user', 'user@example.com', '555-555-5556');

UPDATE profiles
SET
  name = 'normal_user',
  role = 'user'
WHERE
  id = (
    SELECT
      id
    FROM
      auth.users
    WHERE
      email = 'user@example.com'
  );

-- 一般ユーザとしての認証
SELECT
  tests.authenticate_as ('normal_user');

SELECT
  plan (6);

-- contributors テーブルが存在すること
SELECT
  has_table ('public', 'contributors', 'contributors テーブルが存在すること');

-- contributors テーブルの RLS が有効になっていること
SELECT
  tests.rls_enabled ('public', 'contributors');

-- コントリビューターを読み取れること
SELECT
  results_eq ('SELECT name FROM contributors', ARRAY['Sample Contributor'], '任意のユーザはサンプルコントリビューターを読み取れること');

-- コントリビューターを追加できないこと
PREPARE insert_throw AS
INSERT INTO
  contributors (name, avatar_url, contribution_count)
VALUES
  ('another sample sponsor', 'https://example.com/avatar.png', 10);

SELECT
  throws_ok (
    'insert_throw',
    '42501',
    'new row violates row-level security policy for table "contributors"',
    '任意のユーザはコントリビューターを追加できないこと'
  );

-- コントリビューターを削除できないこと
DELETE FROM contributors;

SELECT
  results_eq ('SELECT COUNT(*) FROM contributors', ARRAY[1::bigint], 'コントリビューターを削除できていないこと');

-- コントリビューターを更新できないこと
PREPARE update_throw AS
UPDATE contributors
SET
  name = 'updated sample contributor';

SELECT
  results_eq ('SELECT name FROM contributors', ARRAY['Sample Contributor'], 'コントリビューターを更新できていないこと');

SELECT
  *
FROM
  finish ();

ROLLBACK;
