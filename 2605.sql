select p.name, prov.name 
from products as p
inner JOIN providers as prov
    on p.id_providers = prov.id
inner join categories as c
    on p.id_categories = c.id
where c.id = 6