CREATE TYPE sponsor_type AS ENUM ('platinum', 'gold', 'silver', 'bronze');

CREATE TABLE
  IF NOT EXISTS sponsor (
    id SERIAL PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    logo_name TEXT NOT NULL,
    /* https://[project_id].supabase.co/storage/v1/object/public/sponsor/[logo_name] でアクセス可能 */
    description TEXT NOT NULL,
    url TEXT NULL,
    type sponsor_type NOT NULL
  );

ALTER TABLE sponsor ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Everyone can read sponsor" ON sponsor
FOR SELECT
  USING (true);
