-- 코드를 입력하세요
with days as (select a.history_id as history_id,b.car_type as car_type,
    datediff(a.end_date,a.start_date)+1 as days,
    case 
        when datediff(a.end_date,a.start_date)+1 >= 90 then '90일 이상'
        when datediff(a.end_date,a.start_date)+1 >= 30 then '30일 이상'
        when datediff(a.end_date,a.start_date)+1 >= 7 then '7일 이상'
    else null end as daygroup,
    b.daily_fee as daily_fee
    from car_rental_company_rental_history a
    left join car_rental_company_car b on a.car_id = b.car_id
    where b.car_type = '트럭')
# 바로 내가 계산해서 넣을수 있지만 엄청 크기가 방대한 데이터를 다룬다고 생각하고 짜보자
select k.history_id,
floor(k.daily_fee*k.days*((100 - IFNULL(c.discount_rate,0)) / 100))as FEE
from days k
left join CAR_RENTAL_COMPANY_DISCOUNT_PLAN c
on k.daygroup = c.duration_type
and k.car_type = c.car_type
group by 1
order by 2 desc, 1 desc
