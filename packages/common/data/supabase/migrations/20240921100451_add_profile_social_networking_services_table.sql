CREATE TABLE public.profile_social_networking_services (
  id UUID REFERENCES profiles (id) ON DELETE cascade,
  type social_networking_service_type NOT NULL,
  value text NOT NULL,
  UNIQUE (id, type, value)
);

ALTER TABLE profile_social_networking_services enable ROW level security;

CREATE POLICY "Users can CRUD their own profile SNS" ON public.profile_social_networking_services FOR ALL TO authenticated USING (
  (
    SELECT
      auth.uid ()
  ) = id
);

CREATE POLICY "Admin can read all profile SNS" ON public.profile_social_networking_services FOR
SELECT
  TO authenticated USING (role () = 'admin');

CREATE VIEW public.profiles_with_sns
WITH
  (security_invoker = TRUE) AS
SELECT
  p.*,
  json_agg(json_build_object('id', pss.id, 'type', pss.type, 'value', pss.value)) AS sns_accounts
FROM
  profiles p
  LEFT JOIN profile_social_networking_services pss ON p.id = pss.id
GROUP BY
  p.id;
