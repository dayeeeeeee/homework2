-- 코드를 입력하세요
SELECT b.car_id,
#a.history_id,b.start_date,b.end_date,
case when (a.car_id is not null) then '대여중'
else '대여 가능'
end as availability
from (select car_id,history_id from car_rental_company_rental_history 
      where (start_date <= '2022-10-16'and '2022-10-16' <= end_date)) a
right join car_rental_company_rental_history b
on a.car_id = b.car_id
group by b.car_id
order by 1 desc

# select car_id,start_date,end_date from car_rental_company_rental_history 
#       #where start_date <= '2022-10-16'and '2022-10-16' <= end_date
#       where car_id = 2