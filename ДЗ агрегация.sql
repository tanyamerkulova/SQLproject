--Ex.1
SELECT level, count(*) 
FROM student
WHERE education_form = 'personal'
GROUP BY  level
ORDER BY count(*) desc;
--Ex.2
SELECT education_form, count(*) 
FROM student
WHERE level = 'Advanced'
GROUP BY  education_form
ORDER BY count(*) ASC;
--Ex.3
SELECT min(group_id), max(group_id)
FROM group_student;
--Ex.4
SELECT group_id, count(*) 
FROM group_student
GROUP BY  group_id
ORDER by count(*) DESC
LIMIT 1;

SELECT * 
FROM student
WHERE level = 'Advanced';
