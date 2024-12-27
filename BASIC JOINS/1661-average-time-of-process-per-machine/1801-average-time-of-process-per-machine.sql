# Write your MySQL query statement below
select a.machine_id ,round(avg(e.timestamp-a.timestamp),3) as processing_time
from activity a
inner join activity e using (machine_id)
where a.activity_type='start' and e.activity_type='end'
group by 1;
