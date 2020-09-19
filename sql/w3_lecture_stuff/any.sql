SELECT beer, price
FROM   Sells
WHERE  price >=
          ANY (SELECT price FROM sells);