# Write your MySQL query statement below
select e.name, b.bonus
from employee e left join bonus b using(empid)
where ifnull(b.bonus,0)<1000;