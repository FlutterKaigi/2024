CREATE TABLE IF NOT EXISTS staff_social_networking_service_links (
  staff_id serial REFERENCES staffs (id) NOT NULL,
  social_networking_service_id serial REFERENCES social_networking_services (id) NOT NULL,
  url text NOT NULL,
  PRIMARY KEY (staff_id, social_networking_service_id)
);

ALTER TABLE staff_social_networking_service_links enable ROW level security;

CREATE POLICY "Everyone can read staff_social_networking_service_links" ON staff_social_networking_service_links FOR
SELECT
  USING (TRUE);
