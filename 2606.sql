select p.id, p.name
from products as p
inner join categories as c
on p.id_categories = c.id
where c.name like 'super%'

SELECT id,name 
FROM products 
WHERE id_categories 
IN (SELECT id FROM Categories WHERE name LIKE 'super%')