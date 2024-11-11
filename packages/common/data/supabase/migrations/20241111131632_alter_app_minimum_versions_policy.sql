DROP POLICY "Everyone can read app_minimum_versions" ON app_minimum_versions;

CREATE POLICY "Anonymous user can read app_minimum_versions" ON app_minimum_versions FOR
SELECT
    TO anon USING (TRUE);
