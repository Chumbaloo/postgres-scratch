-- DROP TABLE IF EXISTS A, B, C;



-- The most brutal, rip the band-aid approach
-- https://stackoverflow.com/a/13823560
DROP SCHEMA public CASCADE;
CREATE SCHEMA public;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;