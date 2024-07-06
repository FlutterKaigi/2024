CREATE TYPE sponsor_type AS ENUM ('platinum', 'gold', 'silver', 'bronze');

CREATE TABLE
  IF NOT EXISTS sponsors (
    id SERIAL PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    logo_name TEXT NOT NULL,
    /* https://[project_id].supabase.co/storage/v1/object/public/sponsors/[logo_name] でアクセス可能 */
    description TEXT NOT NULL,
    url TEXT NULL,
    type sponsor_type NOT NULL
  );

ALTER TABLE sponsors ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Everyone can read sponsor" ON sponsors
FOR SELECT
  USING (true);
