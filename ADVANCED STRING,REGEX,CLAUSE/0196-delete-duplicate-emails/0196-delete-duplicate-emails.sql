# Write your MySQL query statement below
delete E
from person p
inner join person e using (email)
where p.id<e.id;