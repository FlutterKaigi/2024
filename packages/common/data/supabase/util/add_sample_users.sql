BEGIN;

DELETE FROM public.profile_social_networking_services;

DELETE FROM auth.users;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION if NOT EXISTS "basejump-supabase_test_helpers"
WITH
  schema extensions;

-- 10000件のUserを作成
DO $$
DECLARE
  i INT;
BEGIN
DELETE FROM auth.users;
  FOR i IN 1..10000 LOOP
    -- create_supabase_userを実行
    PERFORM tests.create_supabase_user(
      'user_' || i,
      'user_' || i || '@example.com',
      uuid_generate_v4()::text
    );
  END LOOP;
END $$;

-- SNSアカウントをまとめて追加
INSERT INTO
  public.profile_social_networking_services (id, type, value)
SELECT
  id,
  unnest(ARRAY['x'::social_networking_service_type, 'github'::social_networking_service_type]) AS type,
  unnest(
    ARRAY[
      'x_' || (
        row_number() OVER (
          ORDER BY
            id
        )
      )::text,
      'github_' || (
        row_number() OVER (
          ORDER BY
            id
        )
      )::text
    ]
  ) AS value
FROM
  auth.users
WHERE
  email LIKE 'user_%@example.com';

COMMIT;
