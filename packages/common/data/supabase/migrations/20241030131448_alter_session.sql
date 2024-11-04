-- 登壇者のアバターを格納するバケット
INSERT INTO
  storage.buckets (id, name, public)
VALUES
  ('speakers', 'speakers', TRUE);

CREATE POLICY "Everyone can read sponsors bucket" ON storage.buckets FOR
SELECT
  USING (TRUE);

-- 登壇者の情報を格納するテーブル
CREATE TABLE speakers (id UUID PRIMARY KEY DEFAULT gen_random_uuid (), name text NOT NULL, avatar_name text, x_id text);

ALTER TABLE speakers enable ROW level security;

CREATE POLICY "Everyone can read speakers" ON speakers FOR
SELECT
  USING (TRUE);

CREATE POLICY "Admin can CRUD speakers" ON speakers FOR ALL TO authenticated USING (role () = 'admin');

-- セッションと登壇者の関係を格納する中間テーブル
CREATE TABLE session_speakers_v2 (
  session_id UUID NOT NULL REFERENCES sessions (id) ON DELETE cascade,
  speaker_id UUID NOT NULL REFERENCES speakers (id) ON DELETE cascade,
  PRIMARY KEY (session_id, speaker_id)
);

ALTER TABLE session_speakers_v2 enable ROW level security;

CREATE POLICY "Everyone can read session_speakers_v2" ON session_speakers_v2 FOR
SELECT
  USING (TRUE);

CREATE POLICY "Admin can CRUD session_speakers_v2" ON session_speakers_v2 FOR ALL TO authenticated USING (role () = 'admin');

-- セッション会場・セッション・登壇者・スポンサーの情報を取得するビューを作成する
CREATE VIEW public.session_venues_with_sessions_v2
WITH
  (security_invoker = TRUE) AS
WITH
  speaker_details AS (
    SELECT
      ss.session_id,
      json_agg(sp.*) AS speakers
    FROM
      session_speakers_v2 ss
      JOIN speakers sp ON ss.speaker_id = sp.id
    GROUP BY
      ss.session_id
  ),
  sponsor_details AS (
    SELECT
      s.id AS session_id,
      json_agg(sp.*) AS sponsors
    FROM
      sessions s
      JOIN sponsors sp ON sp.id = s.sponsor_id
    GROUP BY
      s.id
  ),
  session_details AS (
    SELECT
      s.venue_id,
      json_agg(
        json_build_object(
          'id',
          s.id,
          'title',
          s.title,
          'description',
          s.description,
          'starts_at',
          s.starts_at,
          'ends_at',
          s.ends_at,
          'is_lightning_talk',
          s.is_lightning_talk,
          'speakers',
          coalesce(sd.speakers, '[]'::json),
          'sponsors',
          coalesce(spd.sponsors, '[]'::json)
        )
      ) FILTER (
        WHERE
          s.id IS NOT NULL
      ) AS sessions
    FROM
      sessions s
      LEFT JOIN speaker_details sd ON sd.session_id = s.id
      LEFT JOIN sponsor_details spd ON spd.session_id = s.id
    GROUP BY
      s.venue_id
  )
SELECT
  v.id,
  v.name,
  coalesce(sd.sessions, '[]'::json) AS sessions
FROM
  session_venues v
  LEFT JOIN session_details sd ON sd.venue_id = v.id;

-- スポンサーとセッションの関係を取得するビューを作成する
CREATE OR REPLACE VIEW public.sponsor_with_sessions_v2
WITH
  (security_invoker = TRUE) AS
WITH
  speaker_details AS (
    SELECT
      ss.session_id,
      json_agg(sp.*) AS speakers
    FROM
      session_speakers_v2 ss
      JOIN speakers sp ON ss.speaker_id = sp.id
    GROUP BY
      ss.session_id
  ),
  venue_details AS (
    SELECT
      v.id,
      json_build_object('id', v.id, 'name', v.name) AS venue_info
    FROM
      session_venues v
  ),
  session_details AS (
    SELECT
      s.sponsor_id,
      json_agg(
        json_build_object(
          'id',
          s.id,
          'title',
          s.title,
          'description',
          s.description,
          'starts_at',
          s.starts_at,
          'ends_at',
          s.ends_at,
          'is_lightning_talk',
          s.is_lightning_talk,
          'speakers',
          coalesce(sd.speakers, '[]'::json),
          'venue',
          vd.venue_info
        )
      ) FILTER (
        WHERE
          s.id IS NOT NULL
      ) AS sessions
    FROM
      sessions s
      LEFT JOIN speaker_details sd ON sd.session_id = s.id
      LEFT JOIN venue_details vd ON vd.id = s.venue_id
    GROUP BY
      s.sponsor_id
  )
SELECT
  sp.*,
  coalesce(sd.sessions, '[]'::json) AS sessions
FROM
  sponsors sp
  LEFT JOIN session_details sd ON sd.sponsor_id = sp.id;
