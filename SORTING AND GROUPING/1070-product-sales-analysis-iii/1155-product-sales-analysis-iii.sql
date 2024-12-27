# Write your MySQL query statement below
with first_year as(
    select product_id,min(year) as year
    from sales
    group by product_id
)

select  s.product_id, 
        y.year as first_year,
        s.quantity, s.price
from sales s
inner join first_year y using (product_id,year)