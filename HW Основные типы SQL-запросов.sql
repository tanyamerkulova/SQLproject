select * from student;

--Ex.1
select "level" AS stud_level
from student AS s
where user_id = 9651;

--Ex.2
select email from teacher 
where group_id BETWEEN 180 AND 195;

--Ex.3
select user_id from users 
where user_email LIKE '%43@yahoo.com';
