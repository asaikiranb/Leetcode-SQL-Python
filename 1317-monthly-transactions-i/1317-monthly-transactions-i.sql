# Write your MySQL query statement below
select 
left(trans_date,7) as month , 
# this take first 7 charaters from the left in trans_date
country ,
count(id) as trans_count ,
sum(if(state='approved',1,0)) as approved_count ,
sum(amount) as trans_total_amount ,
sum(if(state='approved',amount,0)) as approved_total_amount
from Transactions
group by month, country
# group by countryas US and DE is shown as 2 entries in the OP table
