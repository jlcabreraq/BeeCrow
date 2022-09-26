select c.name, o.id
from orders as o
inner join customers as c
    on o.id_customers = c.id
where extract(month from o.orders_date) between 1 and 6
    and extract(year from o.orders_date) = 2016