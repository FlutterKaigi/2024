ALTER TABLE sections enable ROW level security;

CREATE POLICY "Authorized users can select sections" ON sections FOR
SELECT
  TO authenticated USING (TRUE);

CREATE POLICY "Admins can CRUD sections" ON sections FOR ALL TO authenticated USING (auth.role () = 'admin');
