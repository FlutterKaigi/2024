INSERT INTO
  storage.buckets (id, name, public)
VALUES
  ('staffs', 'staffs', TRUE);

CREATE POLICY "Everyone can read staffs bucket" ON storage.buckets FOR
SELECT
  USING (TRUE);
