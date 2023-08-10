-- 코드를 입력하세요
SELECT a.flavor
from first_half a
join july b on a.flavor = b.flavor 
group by a.flavor 
order by sum(a.total_order+b.total_order) desc
limit 3
