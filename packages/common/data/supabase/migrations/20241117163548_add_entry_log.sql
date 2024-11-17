CREATE TABLE entry_log (
  id UUID PRIMARY KEY REFERENCES auth.users (id) ON DELETE cascade,
  created_at timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE entry_log enable ROW level security;

CREATE POLICY "Admin can CRUD entry_log" ON entry_log FOR ALL TO authenticated USING (role () = 'admin');

-- Profile, Ticket, EntryLogを同時に返すView
CREATE VIEW profile_with_tickets_and_entry_log
WITH
  (security_invoker) AS
SELECT
  json_build_object('profile', p, 'ticket', t, 'entry_log', el)
FROM
  tickets AS t
  JOIN profiles AS p ON t.user_id = p.id
  LEFT JOIN entry_log AS el ON t.user_id = el.id;
