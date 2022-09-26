-- selects
select id, name 
from customers 
where id not in (select id_customer from locations)
order by id


-- left join
select c.id, c.name 
from customers as c
left join locations as l
    on c.id = l.id_customers
where l is NULL
order by c.id