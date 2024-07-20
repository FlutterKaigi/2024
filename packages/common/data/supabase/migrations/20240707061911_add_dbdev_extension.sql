-- https://supabase.github.io/dbdev/install-in-db-client/
CREATE EXTENSION if NOT EXISTS http
WITH
  schema extensions;

CREATE EXTENSION if NOT EXISTS pg_tle;

DROP EXTENSION if EXISTS "supabase-dbdev";

SELECT
  pgtle.uninstall_extension_if_exists ('supabase-dbdev');

SELECT
  pgtle.install_extension (
    'supabase-dbdev',
    resp.contents ->> 'version',
    'PostgreSQL package manager',
    resp.contents ->> 'sql'
  )
FROM
  http (
    (
      'GET',
      'https://api.database.dev/rest/v1/' || 'package_versions?select=sql,version' || '&package_name=eq.supabase-dbdev' || '&order=version.desc' || '&limit=1',
      ARRAY[
        (
          'apiKey',
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhtdXB0cHBsZnZpaWZyYndtbXR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODAxMDczNzIsImV4cCI6MTk5NTY4MzM3Mn0.z2CN0mvO2No8wSi46Gw59DFGCTJrzM0AQKsu_5k134s'
        )::http_header
      ],
      NULL,
      NULL
    )
  ) x,
  LATERAL (
    SELECT
      ((row_to_json(x) -> 'content') #>> '{}')::json -> 0
  ) resp (contents);

CREATE EXTENSION "supabase-dbdev";

SELECT
  dbdev.install ('supabase-dbdev');

DROP EXTENSION if EXISTS "supabase-dbdev";

CREATE EXTENSION "supabase-dbdev";
