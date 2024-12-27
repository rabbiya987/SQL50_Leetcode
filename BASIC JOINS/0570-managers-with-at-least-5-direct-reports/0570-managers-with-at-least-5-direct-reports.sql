# Write your MySQL query statement below
select r.name from employee e
inner join employee r on r.id=e.managerid
group by r.id
having count(*)>=5;