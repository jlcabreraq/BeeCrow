select c.name, 
round ((((s.math * 2) + (s.specific * 3) + (s.project_plan * 5)) / 10 ), 2) as avg
from score as s
inner join candidate as c
    on s.candidate_id = c.id
order by avg desc
