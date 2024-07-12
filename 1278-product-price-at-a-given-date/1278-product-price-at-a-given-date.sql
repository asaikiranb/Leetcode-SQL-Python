# Write your MySQL query statement below
select product_id, new_price as price 
from Products 
where (product_id, change_date ) in
(
    select product_id, max(change_date)
    # we take the max price of the product with a condition that it should be before 16/08
    from Products
    where change_date <= '2019-08-16'
    group by product_id
)

# now we have to hardcode the value for 10 if its sold after 16 th so we use 
union
select product_id , 10 as price 
from Products 
where (product_id ) not in
(
    select product_id
    from Products
    where change_date <= '2019-08-16'
    group by product_id

)