-- Выведите максимальную сумму покупки.
select max(amt)  
from sales;
-- Выведите минимальную дату покупки.
select min(dt)  
from sales;
-- Выведите среднюю сумму покупок для customer_id = 1.
select avg(amt)  
from sales
where customer_id = 1;
-- Выведите минимальную и максимальную сумму покупки, совершенной в магазине с store_id = 3 или покупателем с customer_id = 2.
select max(amt), min(amt) 
from sales
where store_id = 3 or customer_id = 2;
--Выведите количество уникальных имен покупателей.
select  count(DISTINCT customer_nm) 
from customers; 
