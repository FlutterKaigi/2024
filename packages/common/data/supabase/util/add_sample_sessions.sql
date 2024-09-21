BEGIN;
DELETE FROM public.sessions;
DELETE FROM public.session_speakers;
DELETE FROM public.session_venues;

-- サンプルの会場を追加
INSERT INTO
  public.session_venues (name)
VALUES
  ('メインホール'),
  ('セミナールームA'),
  ('セミナールームB'),
  ('ワークショップエリア');

-- サンプルのセッションを追加
DO $$
DECLARE
  venue_id UUID;
  speaker_id UUID;
  session_id UUID;
  i INT;
BEGIN
  FOR i IN 1..500 LOOP
    -- ランダムな会場を選択
    SELECT id INTO venue_id FROM public.session_venues ORDER BY RANDOM() LIMIT 1;

    -- セッションを挿入
    INSERT INTO public.sessions (title, description, starts_at, ends_at, venue_id)
    VALUES (
      'サンプルセッション ' || i,
      'これはサンプルセッション ' || i || ' の説明です。',
      NOW() + (RANDOM() * INTERVAL '7 days'),
      NOW() + (RANDOM() * INTERVAL '7 days') + INTERVAL '1 hour',
      venue_id
    ) RETURNING id INTO session_id;

    -- ランダムな登壇者を1-3人選択
    FOR j IN 1..((RANDOM() * 3)::INT + 1) LOOP
      SELECT id INTO speaker_id FROM profiles ORDER BY RANDOM() LIMIT 1;
      INSERT INTO public.session_speakers (session_id, speaker_id)
      VALUES (session_id, speaker_id);
    END LOOP;
  END LOOP;
END $$;

COMMIT;
