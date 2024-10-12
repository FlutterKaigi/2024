ALTER TABLE public.profiles
ALTER COLUMN is_adult
DROP NOT NULL;

ALTER TABLE public.profiles
ALTER COLUMN is_adult
SET DEFAULT NULL;
