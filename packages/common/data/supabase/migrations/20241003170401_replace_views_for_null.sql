-- Nullの時に不正な値を返すVIEWが多かったので、空配列を返すように変更
CREATE OR REPLACE VIEW public.profiles_with_sns AS
SELECT
  p.*,
  coalesce(
    json_agg(json_build_object('id', pss.id, 'type', pss.type, 'value', pss.value)) FILTER (
      WHERE
        pss.id IS NOT NULL
    ),
    '[]'::json
  ) AS sns_accounts
FROM
  profiles p
  LEFT JOIN profile_social_networking_services pss ON p.id = pss.id
GROUP BY
  p.id;

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
        (
          SELECT
            json_agg(
              json_build_object(
                'id',
                p.id,
                'name',
                p.name,
                'avatar_url',
                p.avatar_url,
                'avatar_name',
                p.avatar_name,
                'sns_accounts',
                (
                  SELECT
                    json_agg(pss.*)
                  FROM
                    profile_social_networking_services pss
                  WHERE
                    pss.id = p.id
                )
              )
            )
          FROM
            session_speakers ss
            JOIN profiles p ON ss.speaker_id = p.id
          WHERE
            ss.session_id = s.id
        ),
        'sponsors',
        (
          SELECT
            json_agg(sp.*)
          FROM
            sponsors sp
          WHERE
            sp.id = s.sponsor_id
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
