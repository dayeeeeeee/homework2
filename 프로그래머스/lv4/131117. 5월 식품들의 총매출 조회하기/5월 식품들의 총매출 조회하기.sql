-- 코드를 입력하세요
SELECT a.product_id, a.product_name, b.sums *a.price as total_sales
from food_product a
join (select product_id,sum(amount) as sums from food_order where produce_date like '2022-05%'group by product_id) b 
on a.product_id = b.product_id
group by 1,2
order by 3 desc, 1