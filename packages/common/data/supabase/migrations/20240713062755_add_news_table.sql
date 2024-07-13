CREATE TABLE IF NOT EXISTS news (
  id serial PRIMARY KEY NOT NULL,
  text text NOT NULL,
  url character varying,
  started_at TIME WITH TIME ZONE,
  ended_at TIME WITH TIME ZONE
);

ALTER TABLE news enable ROW level security;

CREATE POLICY "Everyone can read news" ON news FOR
SELECT
  USING (TRUE);
