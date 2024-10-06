ALTER TABLE public.profiles
ADD COLUMN is_published boolean DEFAULT NULL;

DROP VIEW public.profiles_with_sns;

CREATE OR REPLACE VIEW public.profiles_with_sns
WITH
  (security_invoker = TRUE) AS
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
