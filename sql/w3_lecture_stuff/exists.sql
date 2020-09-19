SELECT name, brewer
FROM   Beers b1
WHERE  NOT EXISTS
          (SELECT *
           FROM   Beers
           WHERE  brewer = b1.brewer
                  AND name != b1.name);
           