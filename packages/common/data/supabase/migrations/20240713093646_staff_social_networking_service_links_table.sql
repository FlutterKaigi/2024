CREATE TABLE IF NOT EXISTS staff_social_networking_service_links (
  id serial PRIMARY KEY NOT NULL,
  staff_id int NOT NULL FOREIGN key (staff_id) REFERENCES staffs (id),
  social_networking_service_id int NOT NULL FOREIGN key (social_networking_service_id) REFERENCES social_networking_services (id),
  url text NOT NULL
);

ALTER TABLE staff_social_networking_service_links enable ROW level security;

CREATE POLICY "Everyone can read staff_social_networking_service_links" ON staff_social_networking_service_links FOR
SELECT
  USING (TRUE);
