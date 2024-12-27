# Write your MySQL query statement below
with numbers as (
    select *, lag(num) over(order by id) as prev,
    lead(num) over(order by id) as next
     from logs 
)
select distinct(num) as ConsecutiveNums
from numbers
where num=prev and num=next;