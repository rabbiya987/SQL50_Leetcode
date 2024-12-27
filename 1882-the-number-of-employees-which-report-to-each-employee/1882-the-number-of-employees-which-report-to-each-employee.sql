# Write your MySQL query statement below
select manager.employee_id, manager.name, count(e.employee_id)as reports_count, round(avg(e.age)) as average_age
from employees manager
join employees e on (E.reports_to = Manager.employee_id)
group by Manager.employee_id
order by Manager.employee_id;