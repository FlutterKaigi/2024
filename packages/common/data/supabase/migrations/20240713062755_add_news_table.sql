CREATE TABLE IF NOT EXISTS news (
  id serial PRIMARY KEY NOT NULL,
  text text NOT NULL,
  url text NOT NULL,
  started_at TIMESTAMP WITH TIME ZONE,
  ended_at TIMESTAMP WITH TIME ZONE
);

ALTER TABLE news enable ROW level security;

CREATE POLICY "Everyone can read news" ON news FOR
SELECT
  USING (TRUE);
