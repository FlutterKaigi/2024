BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION IF NOT EXISTS "basejump-supabase_test_helpers"
WITH
  schema extensions;

-- 1000件のUserを作成
DO $$
DECLARE
  i INT;
BEGIN
DELETE FROM auth.users;
  FOR i IN 1..10000 LOOP
    PERFORM tests.create_supabase_user(
      'user_' || i,
      'user_' || i || '@example.com',
      uuid_generate_v4()::text
    );
  END LOOP;
END $$;

COMMIT;
