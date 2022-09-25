select p.name, pr.name, p.price,
from products as p
inner join categories as c
on p.id_categories = c.id 
inner join providers as pr
on c.id_providers = pr.id
where c.name = 'Super Luxury'