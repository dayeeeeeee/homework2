-- 코드를 입력하세요
select a.member_name, b.review_text,date_format(b.review_date,'%Y-%m-%d')as REVIEW_DATE
from member_profile a
join rest_review b on a.member_id = b.member_id
where a.member_id = (select member_id
from rest_review
group by member_id
order by count(member_id) desc
limit 1)
order by 3

