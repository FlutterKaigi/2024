ALTER TABLE sessions
DROP CONSTRAINT sessions_sponsor_id_fkey;

ALTER TABLE sessions
ADD CONSTRAINT sessions_sponsor_id_fkey FOREIGN key (sponsor_id) REFERENCES sponsors (id) ON DELETE cascade;
