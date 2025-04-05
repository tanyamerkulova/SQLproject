--inner join 
select user_id, subject_title
from users  AS u -- «из» таблицы group_student «в качестве» s.
	join subject AS s -- «Соединить» c таблицей teacher «в качестве» t
	on s.subject_id = u.subject_id  
Where u.user_id = 42568; -- «по» колонке group_id.
--left\right join
select s.user_id, 
       s.group_id,
       t.group_id,
       t.teacher_id,
       t.email
from teacher as t
	left join group_student as s
	on s.group_id = t.group_id;
--full join
select s.user_id, 
       s.group_id,
       t.group_id,
       t.teacher_id,
       t.email
from group_student as s
full join teacher as t
on s.group_id = t.group_id;

select *
from student as s
left join subject as sub
on s.subject_id = sub.subject_id;

select  user_id,s.subject_id
from users as u
right join subject as s
on u.subject_id = s.subject_id
where s.subject_id > 1;

select u.user_id 
from users as u
    left join group_student as gs
	on u.user_id = gs.user_id;
	select u.user_id
from users as u
cross join group_student as gs