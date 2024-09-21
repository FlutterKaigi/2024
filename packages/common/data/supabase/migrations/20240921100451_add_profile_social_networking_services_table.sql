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


CREATE FUNCTION public.validate_profile_social_networking_service_update () returns trigger language plpgsql AS $$
BEGIN
  IF NEW.id <> OLD.id THEN
    RAISE EXCEPTION 'Updating "id" is not allowed';
  END IF;
  RETURN NEW;
END;
$$;

CREATE TRIGGER before_profile_social_networking_service_update before insert
OR
UPDATE ON profile_social_networking_services FOR each ROW WHEN (row_security_active('profile_social_networking_services'))
EXECUTE function validate_profile_social_networking_service_update ();


CREATE VIEW public.profiles_with_sns
WITH
  (security_invoker = TRUE) AS
SELECT
  p.*,
  json_agg(
    json_build_object(
      'id',
      pss.id,
      'type',
      pss.type,
      'value', pss.value
    )
  ) as sns_accounts
FROM
  profiles p
LEFT JOIN
  profile_social_networking_services pss ON p.id = pss.id
GROUP BY
  p.id;
