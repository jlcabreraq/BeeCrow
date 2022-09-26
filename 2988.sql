select t.name,
count (m.team_1 + m.team_2) as m,
    sum (case when (m.team_1_goals > m.team_2_goals and t.id = m.team_1)
                or (m.team_2_goals > m.team_1_goals and t.id =m.team_2)
                then 1 else 0 end) as victories,

sum (case when (m.team_1_goals < m.team_2_goals and t.id = m.team_1)
                  or (m.team_2_goals < m.team_1_goals
                   and t.id = m.team_2) then 1 else 0 end) as defeats,
                   
sum(case when (m.team_1_goals = m.team_2_goals
                   and t.id = m.team_1)
                  or (m.team_2_goals = m.team_1_goals
                   and t.id = m.team_2) then 1 else 0 end) as draws,
    
	(sum(case when (m.team_1_goals > m.team_2_goals
                    and t.id = m.team_1)
                   or (m.team_2_goals > m.team_1_goals
                    and t.id = m.team_2) then 3 else 0 end)
	 +
	 sum(case when (m.team_1_goals = m.team_2_goals
                    and t.id = m.team_1)
                   or (m.team_2_goals = m.team_1_goals
                    and t.id = m.team_2) then 1 else 0 end)) as score
from matches as m
inner join teams as t
    on m.team_1 = t.id
    or m.team_2 = t.id
group by t.name
order by score DESC