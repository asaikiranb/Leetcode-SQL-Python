# Write your MySQL query statement below
select q1.person_name from Queue q1
inner join Queue q2
on q1.turn >= q2.turn
group by q1.turn
having sum(q2.weight)<=1000

# since we want only one name ie last entry
order by q1.turn desc limit 1