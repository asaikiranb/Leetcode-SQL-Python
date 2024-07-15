# Write your MySQL query statement below
# here we will change iD and just order by
# we are adding 1 to odd number and even number we subtract one.

select 
case
# if max is odd we need not do anything
when id= (select max(id) from seat) and id%2=1 then id 
when id%2 =1 then id+1 else id-1 
end as id,
student
from seat 
order by id