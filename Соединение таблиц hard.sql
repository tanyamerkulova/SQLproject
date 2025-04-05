--Выведите уникальные названия категорий, которые были куплены в чеке с id = 3.
SELECT DISTINCT products.category
from positions as pos
left join products
on pos.art = products.art
where id_check = 3;
--Выведите артикулы продуктов, которые не покупали (т. е. они не встречается ни в одном чеке).
SELECT p.art
from  products as p
left join positions as ps
on p.art = ps.art
WHERE ps.id_check is NULL ;
--Посчитайте количество чеков, в которых куплено больше двух пар одинаковой обуви.
SELECT  count(DISTINCT ps.id_check) as kol_vo_chekov
from  products as p
left join positions as ps
on p.art = ps.art
WHERE p.category = 'обувь' and (ps.quantity)>2;
--Посчитайте количество чеков, в которых куплено больше двух штук любой одежды.
SELECT  count( ps.id_check)
from  products as p
left join positions as ps
on p.art = ps.art
WHERE (ps.quantity)>2;