-- 코드를 입력하세요
select floor(price/10000)*10000 as price_group,
count(product_id) as products
from product
group by 1
order by 1