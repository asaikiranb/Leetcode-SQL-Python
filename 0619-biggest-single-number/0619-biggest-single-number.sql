# Write your MySQL query statement below
# lets write a sub query first to eliminate numbers that repeat
select max(num) as num from 
(select num from MyNumbers
group by num
having count(num) =1) as new_table