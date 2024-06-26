# Write your MySQL query statement below
select contest_id , 
 round(count(distinct user_id) * 100.0 / (select count(user_id) from Users), 2) AS percentage
from Register 
group by contest_id 
order by percentage desc ,contest_id asc