# Write your MySQL query statement below
with cte as (
    select d.name as department,
           e.name as employee,
           e.salary,
           dense_rank() over(
            partition by e.departmentid
            order by e.salary desc
           )as `rank`
    from department d 
    inner join employee e on (d.id=e.departmentid)
)

select department, employee,salary
from cte
where `rank`<=3;