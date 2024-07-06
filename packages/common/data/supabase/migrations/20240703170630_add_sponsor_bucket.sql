INSERT INTO
  storage.buckets (id, name, public)
VALUES
  ('sponsor', 'sponsor', true);

CREATE POLICY "Everyone can read sponsor bucket" ON storage.buckets FOR
SELECT
  USING (true);
