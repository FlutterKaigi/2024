CREATE TABLE entry_log (
  id UUID PRIMARY KEY REFERENCES auth.users (id) ON DELETE cascade,
  created_at timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE entry_log enable ROW level security;

CREATE POLICY "Admin can CRUD entry_log" ON entry_log FOR ALL TO authenticated USING (role () = 'admin');

-- Profile, Ticket, EntryLogを同時に返すView
CREATE VIEW profile_with_ticket_and_entry_log
WITH
  (security_invoker) AS
SELECT
  row_to_json(p) AS profile,
  row_to_json(t) AS ticket,
  row_to_json(el) AS entry_log,
  u.email AS email,
  p.id AS id
FROM
  profiles AS p
  JOIN auth.users AS u ON p.id = u.id
  LEFT JOIN tickets AS t ON p.id = t.user_id
  LEFT JOIN entry_log AS el ON p.id = el.id;

CREATE FUNCTION profile_with_ticket_and_entry_log_search (has_ticket boolean, has_entry_log boolean, user_id_contains text, email_contains text) returns setof profile_with_ticket_and_entry_log security definer AS $$
BEGIN
-- role() != 'admin'の場合は、エラー
IF role() != 'admin' THEN
  RAISE EXCEPTION 'You are not authorized to access this resource';
END IF;

RETURN QUERY
SELECT * FROM profile_with_ticket_and_entry_log
 WHERE (has_ticket IS NULL OR ticket IS NOT NULL = $1)
  AND (has_entry_log IS NULL OR entry_log IS NOT NULL = $2)
  AND (user_id_contains IS NULL OR id::text ~ $3)
  AND (email_contains IS NULL OR email ~ $4);
END;
$$ language plpgsql stable;
