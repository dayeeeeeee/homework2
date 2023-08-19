# Write your MySQL query statement below
select a.firstName,a.lastName,b.city,b.state 
from person a
left join address b on a.personid = b.personid
