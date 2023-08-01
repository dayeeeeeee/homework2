select year(a.sales_date)as 'YEAR',month(a.sales_date) as 'MONTH',
count(distinct a.user_id) as puchased_users,
round((count(distinct a.user_id))/(select count(user_id) from user_info where year(joined)=2021),1) as puchased_ratio
from online_sale a
left join user_info b 
on a.user_id = b.user_id
where year(b.joined) =2021
group by 1,2
order by 1 desc, 2

