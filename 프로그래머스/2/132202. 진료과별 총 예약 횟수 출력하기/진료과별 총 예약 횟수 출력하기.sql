-- 코드를 입력하세요
SELECT mcdp_cd as '진료과 코드', count(apnt_no)as '5월예약건수'
from appointment
where APNT_YMD like '2022-05%'
group by mcdp_cd
order by 2,1