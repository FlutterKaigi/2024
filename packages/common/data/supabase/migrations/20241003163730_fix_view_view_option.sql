ALTER VIEW public.profiles_with_sns
SET
  (security_invoker = TRUE);

ALTER VIEW public.session_venues_with_sessions
SET
  (security_invoker = TRUE);
