select amount as most_frequent_value
from value_table
group by amount
order by count (*) DESC
limit 1