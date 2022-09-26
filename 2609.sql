select c.name, sum(p.amount)
from products as p
inner join categories as c
    on p.id_categories = c.id
GROUP BY c.id
order BY c.name
