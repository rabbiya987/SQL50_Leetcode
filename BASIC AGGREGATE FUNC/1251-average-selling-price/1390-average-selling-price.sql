# Write your MySQL query statement below
select p.product_id, 
 ifnull(round(sum(p.price*u.units)/sum(u.units),2),0) as average_price
from prices p
left join unitssold u on(
    P.product_id = U.product_id
    and U.purchase_date between P.start_date and P.end_date
)
group by p.product_id;
