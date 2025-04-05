--Ex.1
--Запрос 1
SELECT gs.user_id, gs.group_id
from group_student as gs
join teacher as t
on gs.group_id = t.group_id
where t.email = 'blanda.jamil@yahoo.com';
--Запрос 2
SELECT s."level"
from users as u
join student as s
on u.user_id  = s.user_id
where u.user_email = 'gpagac@jacobs.com';
--Запрос 3
SELECT count(s.user_id is null)
from users as u
LEFT join student as s
on u.user_id  = s.user_id;
--Запрос 4
SELECT DISTINCT s."level" as unique_level
from student as s
LEFT join group_student as gs
on s.user_id  = gs.user_id
Where gs.group_id = 10;
--

