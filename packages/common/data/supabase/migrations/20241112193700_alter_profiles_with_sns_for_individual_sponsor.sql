DROP VIEW public.profiles_with_sns_for_individual_sponsor;

CREATE VIEW public.profiles_with_sns_for_individual_sponsor AS
SELECT
  p.*
FROM
  public.profiles_with_sns AS p
  LEFT JOIN public.tickets AS t ON t.user_id = p.id
WHERE
  t.type = 'individual_sponsor'::ticket_type
  AND p.is_published = TRUE
