SELECT beer, AVG(price)
FROM   Sells
GROUP BY beer
HAVING COUNT(bar) > 1
       OR beer in
           (SELECT name
            FROM   beers
            WHERE  manf = 'Cooper''s');