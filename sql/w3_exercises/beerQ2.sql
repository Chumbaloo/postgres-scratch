select b.name, r.name
from   Beers b join Brewers r on (b.brewer=r.id) 
where  r.name = 'Toohey''s';
;

