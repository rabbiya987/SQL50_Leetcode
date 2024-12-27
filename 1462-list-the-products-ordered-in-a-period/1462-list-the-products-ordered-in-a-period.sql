# Write your MySQL query statement below
select p.product_name, sum(o.unit) as unit
from products p
join orders o using (product_id)
where date_format(o.order_date,'%Y-%m')='2020-02'
group by product_id
having sum(o.unit)>=100;
