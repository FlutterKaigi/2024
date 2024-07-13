CREATE TABLE IF NOT EXISTS social_networking_services (
  id serial PRIMARY KEY NOT NULL,
  name text NOT NULL,
  icon_name text NOT NULL -- https://[project.id].supabase.co/storage/v1/object/public/social_networking_services/[icon_name]
);

ALTER TABLE social_networking_services enable ROW level security;

CREATE POLICY "Everyone can read social_networking_services" ON social_networking_services FOR
SELECT
  USING (TRUE);
