# Write your MySQL query statement below
select l1.num as ConsecutiveNums 
from Logs l1, Logs l2, Logs l3
# since their ID will be in increments of 1 only their difference is always 1
where l1.id - l2.id =1 and l2.id-l3.id=1 
# and now num should also be equal its not just ID diff being 1
and l1.num = l2.num
and l2.num= l3.num
and l1.num = l3.num
group by l1.num