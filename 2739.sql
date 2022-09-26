select name, cast(extract(DAY from payday) as integer) as day
from loan 