-- Select employees with their primary department
select employee_id, department_id
from employee
where primary_flag = 'Y'

-- Union with employees who belong to only one department
union 

select employee_id, department_id
from employee
group by employee_id
having count(employee_id) = 1;
