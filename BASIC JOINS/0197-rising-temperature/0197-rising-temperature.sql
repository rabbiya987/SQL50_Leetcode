# Write your MySQL query statement below
select t.id from weather t join weather y
on (date_sub(t.recorddate,interval 1 day)=y.recorddate)
where T.temperature > Y.temperature;;