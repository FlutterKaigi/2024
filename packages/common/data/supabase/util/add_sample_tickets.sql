BEGIN;

-- 既存のチケットを削除
DELETE FROM public.tickets;

-- 各ユーザーに対してチケットを作成
-- 2024-11-12 00:00:00+09:00 より前のチケット（プロフィールあり）を500件作成
INSERT INTO public.tickets (user_id, type, created_at)
SELECT
  id,
  'general'::ticket_type,
  '2024-11-01 00:00:00+09:00'::TIMESTAMP WITH TIME ZONE
FROM
  auth.users
WHERE
  email LIKE 'user_%@example.com'
LIMIT 100;

-- 2024-11-12 00:00:00+09:00 以降のチケット（プロフィールなし）を500件作成
INSERT INTO public.tickets (user_id, type, created_at)
SELECT
  id,
  'general'::ticket_type,
  '2024-11-12 11:00:00+09:00'::TIMESTAMP WITH TIME ZONE
FROM
  auth.users
WHERE
  email LIKE 'user_%@example.com'
  AND id NOT IN (SELECT user_id FROM public.tickets)
LIMIT 100;

SELECT * FROM public.section_counts;


COMMIT;
