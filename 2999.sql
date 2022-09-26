
with registros as (
select temperature, count (temperature) as conteo
from records
GROUP BY temperature, mark
ORDER BY mark
)
select temperature, conteo as number_of_records
from registros

