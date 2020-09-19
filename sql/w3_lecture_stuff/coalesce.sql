-- Gives the first non NULL value.

select coalesce(NULL,'test');                                       -- test
select coalesce('test1','test2');                                   -- test1
select coalesce('test1','test2', NULL);                             -- test1
select coalesce(NULL, 'test1','test2', NULL);                       -- test1
select coalesce(NULL, NULL, NULL, NULL, 'test1','test2', NULL);     -- test1


-- postgres=# \i sql/w3_lecture_stuff/coalesce.sql 
--  coalesce 
-- ----------
--  test
-- (1 row)

--  coalesce 
-- ----------
--  test1
-- (1 row)

--  coalesce 
-- ----------
--  test1
-- (1 row)

--  coalesce 
-- ----------
--  test1
-- (1 row)

--  coalesce 
-- ----------
--  test1
-- (1 row)