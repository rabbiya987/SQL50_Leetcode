# Write your MySQL query statement below
select s.student_id, s.student_name, sub.subject_name, count(e.student_id)as attended_exams
from students s 
cross join subjects sub
left join examinations e on(
    S.student_id = E.student_id
    and sub.subject_name = e.subject_name
)
group by sub.subject_name,s.student_name, s.student_id
order by S.student_id, Sub.subject_name;;