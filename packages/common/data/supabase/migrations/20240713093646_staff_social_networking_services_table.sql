CREATE TYPE social_networking_service_type AS enum(
  'x', -- https://x.com/[value]
  'discord', -- https://discordapp.com/users/[value]
  'github', -- https://github.com/[value]
  'qiita', -- https://qiita.com/[value]
  'zenn', -- https://zenn.dev/[value]
  'note', -- https://note.com/[value]
  'other' -- [value]
);

CREATE TABLE IF NOT EXISTS staff_social_networking_services (
  id serial PRIMARY KEY NOT NULL,
  staff_id smallserial REFERENCES staffs (id) NOT NULL,
  type social_networking_service_type NOT NULL,
  value text NOT NULL,
  UNIQUE (staff_id, type, value)
);

CREATE INDEX idx_staff_social_networking_services_staff_id ON staff_social_networking_services (staff_id);

ALTER TABLE staff_social_networking_services enable ROW level security;

CREATE POLICY "Everyone can read staff_social_networking_services" ON staff_social_networking_services FOR
SELECT
  USING (TRUE);
