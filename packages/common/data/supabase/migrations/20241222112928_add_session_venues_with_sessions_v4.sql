CREATE VIEW public.session_venues_with_sessions_v4
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
                    -- session_venues_with_sessions_v3との変更点
                    -- video_urlを追加
                    'video_url',
                    s.video_url,
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
