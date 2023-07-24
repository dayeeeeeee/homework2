set @hour := -1;
select (@hour := @hour+1) as hour,
(select count(animal_id) from animal_outs where HOUR(DATETIME) = @hour ) as count
from animal_outs
where @hour <23

