# Write your MySQL query statement below
with uniqueno as (
    select num 
    from mynumbers
    group by num
    having count(*)=1
)
select max(num) as num
from uniqueno;