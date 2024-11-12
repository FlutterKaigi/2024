DROP VIEW public.profiles_with_sns_for_individual_sponsor;

CREATE VIEW public.profiles_with_sns_for_individual_sponsor AS
SELECT
  p.*,
  json_agg(psns.*) AS sns_accounts
FROM
  public.profiles AS p
  JOIN public.tickets AS t ON t.user_id = p.id
  JOIN public.profile_social_networking_services AS psns ON psns.id = p.id
WHERE
  t.type = 'individual_sponsor'::ticket_type
  AND p.is_published = TRUE
GROUP BY
  p.id;
