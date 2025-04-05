--количество строк в таблице student
SELECT count(*) FROM student;
--сколько студентов из таблицы student имеют уровень Beginner
SELECT count(*) FROM student
WHERE "level"= 'Beginner';
-- сколько студентов из таблицы student имеют уровень Advanced
SELECT count(*) FROM student
WHERE "level"= 'Advanced';
--сколько студентов из таблицы student выбрали предмет с id 1 (колонка subject_id)
SELECT count(*) FROM student
WHERE subject_id= 1;
--сумма чисел в колонке subject_id таблицы users
SELECT sum(subject_id) FROM users;
--среднее арифметическое чисел в колонке subject_id таблицы users
SELECT avg(subject_id) FROM users;
--минимальное значение в колонке teacher_id таблицы teacher
SELECT min(teacher_id) FROM teacher;
--максимальное значение в колонке teacher_id таблицы teacher
SELECT max(teacher_id) FROM teacher;

select subject_id, count(*) -- «Выбрать» колонку level и «посчитанное количество всех строк»
from student -- «из» таблицы student,
group by subject_id; -- «сгруппировать» результат по колонке level.

--у скольких студентов уровни Elementary и Intermediate
select level, count(*)
from student 
where level in ('Elementary','Intermediate')
group by level;
--Определим количество студентов на каждом уровне в зависимости от формы их обучения. У нас два признака: уровень (level) и форма обучения (education_form). Пропишем их в блоке group by
select level, education_form, count(*) 
from student
group by 1, 2;

--Сгруппируйте студентов в зависимости от предметов (subject_id), которые они выбрали. Посчитайте количество студентов в каждой группе.
select subject_id, count(*) 
from users 
group by subject_id;
--Откройте таблицу users. Посчитайте, сколько студентов выбрали предмет с id между 1 и 5.
select subject_id, count(*) 
from users 
where subject_id BETWEEN 1 and 5
group by subject_id;
--Откройте таблицу student. Посчитайте, у скольких студентов уровни Advanced и Upper-Intermediate.
select "level", count(*) 
from student 
where level IN ('Advanced','Upper-Intermediate')
group by level;
--Откройте таблицу group_student. Посчитайте, сколько студентов учится в группах 122 и 123.
SELECT* FROM group_student;
select group_id, count(*) 
from group_student 
where group_id IN (122,123)
group by group_id;

--Определите количество студентов на каждом уровне. Среди сгруппированных данных найдите уровень, количество студентов в котором равно двум.
select level, count(*) 
from student 
group by level
having count(*) > 324;

--Откройте таблицу users. Сгруппируйте студентов в зависимости от предметов (subject_id), которые они выбрали. Посчитайте количество студентов в каждой группе и выведите только те группы, в которых количество студентов больше 100.
select subject_id, count(*) 
from users 
group by subject_id
having count(*) > 100;
--Откройте таблицу group_student. В ней — информация о том, в какой группе учится каждый студент. Нас интересуют группы от 122-й включительно до 185-й включительно. Из этих групп выведите только те, в которых учится всего один студент.
SELECT* FROM group_student;
select group_id, count(*) 
from group_student 
where group_id BETWEEN 122 and 185
group by group_id
HAVING count(*) = 1;
-- Выбрать колонку subject_id из таблицы users, отсортировать по колонке subject_id в порядке возрастания
select subject_id 
from users
order by subject_id asc; 
--Откройте таблицу group_student. Посчитайте, сколько студентов учится в каждой группе. Вывод сначала отсортируйте в порядке возрастания id групп, затем в порядке убывания (напишите два запроса).
select group_id, count(*) 
from group_student
group by group_id
order by group_id asc; 
select group_id, count(*) 
from group_student
group by group_id
order by count(*) desc; 

--количество учеников с уровнем 'Upper-Intermediate' в таблице student
select level, count(*) 
from student
where level = 'Upper-Intermediate' 
GROUP BY level; 
--В таблице student определите количество учеников с уровнем 'Upper-Intermediate', занимающихся в группе
select level, count(*) 
from student
where level = 'Upper-Intermediate' and education_form = 'group'
GROUP BY level; 
select * from users;
-- таблице users определите количество учеников, занимающихся по предмету 'Английский язык'(subject_id = 1)
select subject_id, count(*) 
from users
where subject_id = 1
GROUP BY subject_id; 
select * from student;
--Определите id предмета (subject_id), который изучает наименьшее количество пользователей. Таблица для запроса — users
select subject_id, count(*) 
from users
GROUP BY subject_id
order by count(*) asc; 
--Определите наиболее распространенный уровень владения английским языком (level) среди учеников, изучающих английский язык. Таблица для запроса — student.
select level, count(*) 
from student
Where subject_id = 1
GROUP BY level
order by count(*) desc; 
--Определите наиболее распространенный уровень владения английским языком (level) среди учеников, изучающих английский язык в группе (education_form = 'group')Таблица для запроса — student.
select level, count(*) 
from student
Where subject_id = 1 and education_form = 'group'
GROUP BY level
order by count(*) desc; 

