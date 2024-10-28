-- Storageのセットアップ
INSERT INTO
  storage.buckets (id, name, public)
VALUES
  ('job_boards', 'job_boards', TRUE);

CREATE POLICY "Admin can CRUD job_boards bucket" ON storage.objects FOR ALL TO authenticated USING (role () = 'admin');

CREATE TABLE job_boards (
  id smallint PRIMARY KEY REFERENCES sponsors (id) ON DELETE cascade,
  url text NOT NULL UNIQUE CHECK (url ~* '^https?://'),
  alt_text text NOT NULL,
  image_name text NOT NULL
);

ALTER TABLE job_boards enable ROW level security;

CREATE POLICY "Everyone can read job_boards" ON job_boards FOR
SELECT
  USING (TRUE);

CREATE POLICY "Admin can CRUD job_boards" ON job_boards FOR ALL TO authenticated USING (role () = 'admin');
