CREATE TABLE IF NOT EXISTS staffs (
  id smallserial PRIMARY KEY NOT NULL,
  name text NOT NULL,
  icon_name text NOT NULL, -- https://[project_id].supabase.co/storage/v1/object/public/staffs/[icon_name]
  greeting text
);

ALTER TABLE staffs enable ROW level security;

CREATE POLICY "Everyone can read staffs" ON staffs FOR
SELECT
  USING (TRUE);
