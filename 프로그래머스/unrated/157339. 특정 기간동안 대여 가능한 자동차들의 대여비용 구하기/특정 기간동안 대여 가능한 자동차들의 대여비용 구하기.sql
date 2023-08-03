-- 코드를 입력하세요
SELECT a.car_id, b.car_type,
Floor(b.daily_fee*30*((100-c.discount_rate)/100))as FEE
from car_rental_company_rental_history a
join car_rental_company_car b on a.car_id = b.car_id
join car_rental_company_discount_plan c on b.car_type = c.car_type
where b.car_type in ('세단','SUV') 
and c.duration_type ='30일 이상'
and a.car_id not in (select car_id from car_rental_company_rental_history where END_DATE > '2022-11-01' AND START_DATE < '2022-12-01')
group by 1,2
having fee>= 500000 and fee < 2000000
order by 3 desc, 2 asc ,1 desc