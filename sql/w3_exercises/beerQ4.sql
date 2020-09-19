select r.name as brewer, count(*) as nbeers
from   Brewers r
         join Beers b on (r.id=b.brewer)
group  by r.name
order by nbeers desc
;


-- select br.name as brewer, count(be.name) as nbeers 
-- from   Beers be, Brewers br
-- where  br.id = be.brewer
-- group by br.name;