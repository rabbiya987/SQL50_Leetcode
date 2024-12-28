# Write your MySQL query statement below
with cte as (select tiv_2016,
    count(*) over(partition by tiv_2015) as tiv_2015,
    count(*) over(partition by lat,lon) as city
from insurance)

select round(sum(tiv_2016), 2) as tiv_2016
from cte
where tiv_2015 > 1
  and city = 1;