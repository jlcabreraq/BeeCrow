select prod.name, prov.name
from products as prod
inner join providers as prov
on prov.id = prod.id_providers
where prov.name = 'Ajax SA'