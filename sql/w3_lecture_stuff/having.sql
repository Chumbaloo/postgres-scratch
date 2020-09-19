SELECT   beer, AVG(price) AS "$$$"
FROM     Sells
WHERE beer > 4
GROUP BY beer
HAVING   COUNT(bar) > 1;