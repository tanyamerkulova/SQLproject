INSERT INTO tags (post_id, tag)
VALUES (1, 'nofilter'),
(2, 'happy'),
(3, 'joy'),
(4, 'music'),
(5, 'dark');
SELECT * from posts;
SELECT * from tags;
UPDATE posts
set post_date = '2023-03-09'
Where post_id = 1;