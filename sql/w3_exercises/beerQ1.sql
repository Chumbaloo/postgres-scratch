select b.name as beer, r.name as brewer
from   Beers b join Brewers r on (b.brewer=r.id)
where  r.name = 'Carlton';

