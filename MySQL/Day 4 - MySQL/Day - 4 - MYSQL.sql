show databases;
use customer;
show tables;
-- select name , unit_price from products
-- order by unit_price desc;
select * from customers;

select first_name as name, city, state, points from customers;
select first_name as name, city, state, points from customers;

select * from customers
where first_name regexp "^[A-D]";

select first_name as name, points from customers;
select first_name as name, points from customers
where points > 500 and points < 2000;

select first_name as name, points from customers
where points > 500 and points < 2000
order by points desc;

select first_name as name, points from customers
where points > 500 and points < 2000
order by points desc
limit 10
offset 3;



