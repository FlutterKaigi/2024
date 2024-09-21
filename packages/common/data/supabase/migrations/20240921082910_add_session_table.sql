-- セッションの会場情報を保存するテーブル
CREATE TABLE public.session_venues (id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (), name text NOT NULL);

ALTER TABLE public.session_venues enable ROW level security;

CREATE POLICY "Everyone can read session_venues" ON session_venues FOR
SELECT
  USING (TRUE);

CREATE TABLE public.sessions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
  title text NOT NULL,
  description text NOT NULL,
  starts_at TIMESTAMP WITH TIME ZONE NOT NULL,
  ends_at TIMESTAMP WITH TIME ZONE NOT NULL,
  venue_id UUID NOT NULL REFERENCES session_venues (id) ON DELETE restrict,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

ALTER TABLE public.sessions enable ROW level security;

CREATE POLICY "Everyone can read sessions" ON sessions FOR
SELECT
  USING (TRUE);

CREATE TABLE public.session_speakers (
  session_id UUID NOT NULL REFERENCES sessions (id) ON DELETE cascade,
  speaker_id UUID NOT NULL REFERENCES profiles (id) ON DELETE cascade,
  PRIMARY KEY (session_id, speaker_id)
);

ALTER TABLE public.session_speakers enable ROW level security;

CREATE POLICY "Everyone can read session_speakers" ON session_speakers FOR
SELECT
  USING (TRUE);

-- session_speakersに含まれるUserは公開
CREATE POLICY "Everyone can read profiles in session_speakers" ON profiles FOR
SELECT
  USING (
    EXISTS (
      SELECT
        1
      FROM
        session_speakers ss
      WHERE
        ss.speaker_id = profiles.id
    )
  );

CREATE OR REPLACE VIEW public.session_venues_with_sessions
WITH
  (security_invoker = TRUE) AS
SELECT
  v.*,
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
      'speakers',
      (
        SELECT
          json_agg(p)
        FROM
          session_speakers ss
          JOIN profiles p ON ss.speaker_id = p.id
        WHERE
          ss.session_id = s.id
      )
    )
    ORDER BY
      s.starts_at ASC
  ) AS sessions
FROM
  public.session_venues v
  JOIN sessions s ON s.venue_id = v.id
GROUP BY
  v.id
ORDER BY
  v.id;
