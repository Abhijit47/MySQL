-- use sql_store;
-- show tables;
-- select * from customers;
-- select * from orders;

-- INNER JOIN
-- select * from orders o
-- join customers c
-- on c.customer_id =  o.customer_id;

-- use sql_hr;
select  
   e.first_name as MANAGER,
   x.first_name as EMP
from employees e
join employees x
on e.employee_id = x.reports_to;

-- use sql_store;
-- @block
-- INNER JOIN
select * from customers c
join orders o
on c.customer_id = o.customer_id;

-- @block
-- LEFT JOIN
select * from customers c
left join orders o
on c.customer_id = o.customer_id;

-- @block
-- RIGHT JOIN
select * from customers c
right join orders o
on c.customer_id = o.customer_id;

--@block
-- use sql_hr;
-- SELF JOIN
select
   e.first_name as MANAGER,
   x.first_name as EMP,
   x.salary as EMP_SALARY
from employees e
   join employees x
   on e.employee_id = x.reports_to;

-- @block
-- NATURAL JOIN
SELECT * FROM employees m
NATURAL join employees x;









