CREATE TYPE public.special_sponsor_type AS enum('community', 'translation');

CREATE TABLE public.sponsors (
  id smallserial NOT NULL PRIMARY KEY,
  name text NOT NULL,
  logo_name text NOT NULL, -- https://[project_id].supabase.co/storage/v1/object/public/sponsors/[logo_name]
  description text NOT NULL,
  url text NULL,
  type public.special_sponsor_type NOT NULL,
  sort_id smallint NOT NULL UNIQUE
);

ALTER TABLE public.sponsors enable ROW level security;

CREATE POLICY "Everyone can read sponsors" ON public.sponsors FOR
SELECT
  USING (TRUE);

CREATE POLICY "Admin can CRUD sponsors" ON public.sponsors FOR ALL TO authenticated USING (role () = 'admin');
