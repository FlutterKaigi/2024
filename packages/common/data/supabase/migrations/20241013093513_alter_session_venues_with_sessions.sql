DROP VIEW public.session_venues_with_sessions;

CREATE VIEW public.session_venues_with_sessions
WITH
  (security_invoker = TRUE) AS
SELECT
  v.id,
  v.name,
  coalesce(
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
        coalesce(
          (
            SELECT
              json_agg(pws.*)
            FROM
              profiles_with_sns pws
              LEFT JOIN session_speakers ss ON ss.speaker_id = pws.id
            WHERE
              ss.session_id = s.id
          ),
          '[]'::json
        ),
        'sponsors',
        coalesce(
          (
            SELECT
              json_agg(sp.*)
            FROM
              sponsors sp
            WHERE
              sp.id = s.sponsor_id
          ),
          '[]'::json
        )
      )
    ) FILTER (
      WHERE
        s.id IS NOT NULL
    ),
    '[]'::json
  ) AS sessions
FROM
  session_venues v
  LEFT JOIN sessions s ON s.venue_id = v.id
GROUP BY
  v.id;
