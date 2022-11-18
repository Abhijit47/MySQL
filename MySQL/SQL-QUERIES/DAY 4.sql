-- show databases;
-- use sql_store;
-- show tables;

-- select * from customers
-- where last_name like "B%";


-- select * from customers
-- where last_name regexp "^b|a|[a-z]e";


-- select * from customers
-- where not last_name regexp "l";

-- select first_name as NAME,
-- 	   points 
-- from customers
-- order by points desc
-- limit 1
-- offset 5;

-- select * from customers
-- where state ="TX" OR state=  "IL" OR state = "TN";

-- select * from customers
-- where state IN ("TX" ,"IL","TN")

-- select * from customers;

-- update TABLE_NAME 
-- set COL_NAME = "NEW VALUE" , COL_NAME  = "NEW VALUE"
-- where CONDITION

-- delect from TABLE_NAME where CONSTION
-- delete from customers where state = "CA";

select first_name as name , state , city from customers;









