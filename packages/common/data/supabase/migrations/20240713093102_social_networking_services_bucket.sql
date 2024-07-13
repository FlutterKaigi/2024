INSERT INTO
  storage.buckets (id, name, public)
VALUES
  ('social_networking_services', 'social_networking_services', TRUE);

CREATE POLICY "Everyone can read social_networking_services bucket" ON storage.buckets FOR
SELECT
  USING (TRUE);
