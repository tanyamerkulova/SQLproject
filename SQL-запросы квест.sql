select species_name
from species
order by species_id ASC
limit 1;

select species_name 
from species
where species_amount>1800;

select species_name 
from species
where type_id = 5 and species_name like 'п%';


select species_name 
from species 
where species_amount = 5 or species_name like '%са';
--ы
select species_name
from species
where to_char(date_start,'YYYY') = '2023';
--c
select s.species_name
from species as s
join species_in_places as places
on places.species_id = s.species_id
where species_status = 'absent' and places.place_id = 3;
--п
select s.species_name, s.species_amount
from species as s
join species_in_places as places
on places.species_id = s.species_id
join places as p
on p.place_id = places.place_id
where p.place_name = 'дом' and (to_char(s.date_start,'MM') = '05');
--!
select s.species_name
from species as s
where species_name like '% %';
--ч
select s.species_name
from species as s
where s.date_start = (select s.date_start from species as s
					   where s.species_name = 'малыш')
AND s.species_name != 'малыш';
--ж
select s.species_name
from species as s
join species_in_places as places
on places.species_id = s.species_id
join places as p
on p.place_id = places.place_id
where p.place_name in ('дом', 'сарай')  
order by p.place_size desc
limit 1;
--ш
select s.species_name
from species as s
join species_in_places as places
on places.species_id = s.species_id
join places as p
on p.place_id = places.place_id
where p.place_name='дом' 
order by s.species_amount desc
limit 1
OFFSET 4;
--т
select s.species_name
from species as s
left join species_in_places as places
on places.species_id = s.species_id
where s.species_status = 'fairy';
