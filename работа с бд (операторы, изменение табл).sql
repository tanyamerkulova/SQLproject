-- данные по постам, которые длиннее 8000 символов.
SELECT * from posts
WHERE text_len > 8000;

-- id постов, которые отмечены тегами happy и joy.
SELECT post_id from  tags
WHERE tag in ('happy', 'joy');

-- id постов, которые были размещены до 10 марта 2023 года.
SELECT post_id from  posts
WHERE post_date < '2023-03-10';

--пост с id 6, сделанный 31 марта 2023 года, содержащий 10 782 символа и отмеченный тегом love (два INSERT в обе таблицы).
INSERT INTO tags (post_id, tag)
VALUES (6, 'love');
INSERT INTO posts (post_id, text_len, post_date)
VALUES (6, 10782,'2023-03-31');

--Изменить тег для поста с id =5 c dark на live.
UPDATE tags
set tag = 'live'
Where post_id = 5;
