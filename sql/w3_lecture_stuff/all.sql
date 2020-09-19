SELECT beer, price
FROM   Sells
WHERE  price >
          ALL (SELECT price FROM sells);