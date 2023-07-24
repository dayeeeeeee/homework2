-- 코드를 입력하세요
SELECT hour(datetime) as 'hour', count(animal_id)
from animal_outs
group by 1
having hour between 9 and 19
order by 1