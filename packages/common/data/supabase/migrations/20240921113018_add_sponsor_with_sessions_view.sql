CREATE OR REPLACE VIEW public.sponsor_with_sessions
WITH
  (security_invoker = TRUE) AS
SELECT
  sp.*,
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
          json_agg(
            json_build_object(
              'id',
              p.id,
              'name',
              p.name,
              'avatar_url',
              p.avatar_url,
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
      )
    )
  ) AS sessions
FROM
  public.sponsors sp
  LEFT JOIN public.sessions s ON sp.id = s.sponsor_id
GROUP BY
  sp.id;
