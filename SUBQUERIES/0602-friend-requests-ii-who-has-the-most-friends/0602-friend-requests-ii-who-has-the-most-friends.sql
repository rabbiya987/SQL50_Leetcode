# Write your MySQL query statement below
with ids as (
    select requester_id as id from requestaccepted 
    union all
    select accepter_id as id from requestaccepted 
)
select id, count(*) as num
from ids
group by 1 
order by 2 desc
limit 1;
