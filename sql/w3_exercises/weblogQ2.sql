select hostname, sum(a.nbytes) as sumBytes
from   accesses a join sessions s on a.session = s.id 
                  join hosts h on s.host = h.id 
where hostname  not like '%au'
group by hostname
order by sumBytes desc
LIMIT 10
;

