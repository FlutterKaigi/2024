INSERT INTO
  storage.buckets (id, name, public)
VALUES
  ('sponsor', 'sponsor', TRUE);

CREATE POLICY "Everyone can read sponsor bucket" ON storage.buckets FOR
SELECT
  USING (TRUE);
