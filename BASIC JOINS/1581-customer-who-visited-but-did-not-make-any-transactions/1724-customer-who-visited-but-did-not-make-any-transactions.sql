# Write your MySQL query statement below
select v.customer_id,Count(v.visit_id) as count_no_trans from visits v 
left join transactions t using (visit_id)
where t.transaction_id is null
group by 1;