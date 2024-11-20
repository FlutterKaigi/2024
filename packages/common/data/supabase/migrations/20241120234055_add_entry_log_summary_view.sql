CREATE VIEW public.entry_log_summary
WITH
  (security_invoker) AS
SELECT
  (
    SELECT
      count(*)
    FROM
      tickets
  ) AS total_tickets,
  (
    SELECT
      count(*)
    FROM
      entry_log
  ) AS total_entries
