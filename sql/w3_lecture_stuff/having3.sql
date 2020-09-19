SELECT DISTINCT S.bar
FROM   Sells S, Likes L
WHERE  S.beer = L.beer
       AND L.drinker = 'Justin'
GROUP BY bar
HAVING COUNT(S.beer) =
           (SELECT count(beer) FROM Likes
            WHERE drinker = 'Justin');