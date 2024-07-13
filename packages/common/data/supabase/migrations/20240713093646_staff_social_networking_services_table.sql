CREATE TABLE IF NOT EXISTS staff_social_networking_services (
  staff_id smallserial REFERENCES staffs (id) NOT NULL,
  social_networking_service_id smallserial REFERENCES social_networking_services (id) NOT NULL,
  url text NOT NULL,
  PRIMARY KEY (staff_id, social_networking_service_id)
);

CREATE INDEX idx_staff_social_networking_services_staff_id ON staff_social_networking_services (staff_id);

ALTER TABLE staff_social_networking_services enable ROW level security;

CREATE POLICY "Everyone can read staff_social_networking_services" ON staff_social_networking_services FOR
SELECT
  USING (TRUE);
