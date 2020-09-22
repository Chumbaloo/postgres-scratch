-- CREATE TABLE basket_a (
--     a INT PRIMARY KEY,
--     fruit_a text NOT NULL
-- );

-- CREATE TABLE basket_b (
--     b INT PRIMARY KEY,
--     fruit_b text NOT NULL
-- );

-- INSERT INTO basket_a (a, fruit_a)
-- VALUES
--     (1, 'Apple'),
--     (2, 'Orange'),
--     (3, 'Banana'),
--     (4, 'Cucumber');

-- INSERT INTO basket_b (b, fruit_b)
-- VALUES
--     (1, 'Orange'),
--     (2, 'Apple'),
--     (3, 'Watermelon'),
--     (4, 'Pear');



-- INNER JOIN
-- select distinct fruit_a, fruit_b
-- from basket_a 
-- inner join basket_b on fruit_a != fruit_b
-- where fruit_a < fruit_b;




-- LEFT OUTER JOIN

SELECT
    a, fruit_a, b, fruit_b
FROM basket_a
LEFT JOIN basket_b ON fruit_a = fruit_b;




-- LEFT OUTER JOIN ONLY

-- SELECT a, fruit_a, b, fruit_b
-- FROM basket_a
-- LEFT JOIN basket_b ON fruit_a = fruit_b
-- WHERE b IS NULL;



-- RIGHT OUTER JOIN

-- SELECT a, fruit_a, b, fruit_b
-- FROM basket_a
-- RIGHT JOIN basket_b ON fruit_a = fruit_b;


-- RIGHT OUTER JOIN ONLY

-- SELECT a, fruit_a, b, fruit_b
-- FROM basket_a
-- RIGHT JOIN basket_b  ON fruit_a = fruit_b
-- WHERE a IS NULL;


-- FULL OUTER JOIN

-- SELECT a, fruit_a, b, fruit_b
-- FROM basket_a
-- FULL OUTER JOIN basket_b ON fruit_a = fruit_b;


-- FULL OUTER JOIN ONLY

-- SELECT a, fruit_a, b, fruit_b
-- FROM basket_a
-- FULL JOIN basket_b ON fruit_a = fruit_b
-- WHERE a IS NULL OR b IS NULL;



-- what is natural join?
-- back to inner join, what if table b has multiple apple rows ? 

-- can u plz run the query on fruit_a != fruit_b?

-- INSERT INTO basket_a (a, fruit_a)
-- VALUES
--     (5, 'Apple');


-- INSERT INTO basket_b (b, fruit_b)
-- VALUES
--     (5, 'Apple');