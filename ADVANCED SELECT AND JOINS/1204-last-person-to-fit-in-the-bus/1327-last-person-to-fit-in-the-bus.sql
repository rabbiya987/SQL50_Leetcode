# Write your MySQL query statement below
with calculate as (
    select person_name,
    sum(weight) over(order by turn) as total
    from queue
)
select person_name
from calculate
where total<=1000
order by total desc
limit 1;