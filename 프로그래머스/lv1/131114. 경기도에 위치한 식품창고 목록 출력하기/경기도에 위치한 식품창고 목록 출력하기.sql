-- 코드를 입력하세요
select warehouse_id, warehouse_name, address,ifnull(freezer_yn,'N')
from food_warehouse
where address like '경기도%'
order by 1