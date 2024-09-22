CREATE VIEW public.sponsor_with_sessions
WITH
  (security_invoker = TRUE) AS
SELECT
  sp.*,
  json_agg(ss) AS sessions
FROM
  public.sponsors sp
  LEFT JOIN public.sessions ss ON sp.id = ss.sponsor_id
GROUP BY
  sp.id
ORDER BY
  sp.id;
