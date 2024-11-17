-- sponsorとspecial_sponsorを結合したビュー
CREATE VIEW public.sponsors_v2
WITH
  (security_invoker = TRUE) AS
SELECT
  id,
  name,
  logo_name,
  description,
  url,
  type::text,
  sort_id
FROM
  sponsors
UNION ALL
SELECT
  id,
  name,
  logo_name,
  description,
  url,
  type::text,
  sort_id
FROM
  special_sponsors
ORDER BY
  sort_id;

-- sponsorとspecial_sponsorを結合したビュー
CREATE VIEW public.sponsor_with_sessions_v3
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
  sponsors_v2 sp
  LEFT JOIN session_details sd ON sd.sponsor_id = sp.id;

CREATE VIEW public.session_venues_with_sessions_v3
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
      JOIN sponsors_v2 sp ON sp.id = s.sponsor_id
      -- session_venues_with_sessions_v2との変更点
      -- sponsorsテーブルから sponsors_v2テーブルに変更
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
