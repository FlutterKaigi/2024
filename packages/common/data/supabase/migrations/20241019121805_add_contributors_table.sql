CREATE TABLE IF NOT EXISTS contributors (
    id UUID NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4 (),
    name text NOT NULL,
    avatar_url text NOT NULL,
    contribution_count smallserial NOT NULL,
    UNIQUE (name)
);

ALTER TABLE contributors enable ROW level security;

CREATE POLICY "Everyone can read contributors" ON contributors FOR
SELECT
    USING (TRUE);
