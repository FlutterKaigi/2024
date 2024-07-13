CREATE TYPE sponsor_type AS enum('platinum', 'gold', 'silver', 'bronze');

CREATE TABLE IF NOT EXISTS sponsors (
  id serial PRIMARY KEY NOT NULL,
  name text NOT NULL,
  logo_name text NOT NULL, -- https://[project_id].supabase.co/storage/v1/object/public/sponsors/[logo_name]
  description text NOT NULL,
  url text NULL,
  type sponsor_type NOT NULL
);

ALTER TABLE sponsors enable ROW level security;

CREATE POLICY "Everyone can read sponsors" ON sponsors FOR
SELECT
  USING (TRUE);
