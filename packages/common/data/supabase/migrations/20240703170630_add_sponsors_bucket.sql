INSERT INTO
  storage.buckets (id, name, public)
VALUES
  ('sponsors', 'sponsors', TRUE);

CREATE POLICY "Everyone can read sponsors bucket" ON storage.buckets FOR
SELECT
  USING (TRUE);
