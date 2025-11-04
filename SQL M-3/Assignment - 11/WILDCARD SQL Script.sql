
-- Queries

-- 1

select s.salesman_id,s.name,c.city_name,s.commission
from salespeople s 
join cities c on 
s.city_id = c.city_id
where city_name in ("Paris","Rome");

-- 2
select s.salesman_id,s.name,c.city_name,s.commission
from salespeople s
join cities c
on s.city_id =c.city_id
where city_name like "Paris" or city_name like "Rome";

-- 3
select s.salesman_id,s.name,c.city_name,s.commission
from salespeople s
join cities c
on s.city_id =c.city_id
where city_name not in ("Paris","Rome");

-- 4 
select customer_id,cust_name,city_id,grade,salesman_id
from customers
where customer_id in (3007,3008,3009);

-- 5
select salesman_id,name,city_id,commission
from salespeople
where commission between 0.12 and 0.14;

-- 6
select ord_no,purch_amt,ord_date,customer_id,salesman_id
from orders
where (purch_amt between 500 and 4000) and  purch_amt not in(9480.50,1983.43);

-- 7
select salesman_id,name,city_id,commission
from salespeople
where name>"A" and name < "L";

-- 8 
select salesman_id,name,city_id,commission
from salespeople
where name like 'A%' or name like 'L%' ;

-- 9
select customer_id, cust_name,city_id , grade, salesman_id
from customers
where cust_name like "B%";

-- 10
select customer_id, cust_name,city_id , grade, salesman_id
from customers
where cust_name like "%n";

-- 11
select salesman_id,name,city_id,commission
from salespeople
where name like 'N__l%' ;

-- 12
select col1
from special_chars_table
where col1 like "%!_%" escape "!";

-- 13
select col1
from special_chars_table
where col1 not like "%!_%" escape "!";

-- 14
select col1
from special_chars_table
where col1  like "%!/%" escape "!";

-- 15
select col1
from special_chars_table
where col1  not like "%/%" ;

-- 16 
select col1 
from special_chars_table 
where col1 like '%!_/%' escape '!';

-- 17
select col1
from special_chars_table
where col1 not like '%!_/%' escape '!';

-- 18
select col1 
from special_chars_table
 where col1 not like '%!%%' escape '!';
 
 -- 19
 select col1 
 from special_chars_table 
 where col1 not like '%!%%' escape '!';

-- 20
select customer_id, cust_name, city_id, grade, salesman_id
from customers
where grade is null;

-- 21
select customer_id, cust_name, city_id, grade, salesman_id
from customers
where grade is not null;

-- 22
select emp_idno,emp_fname,emp_lname,emp_dept
from employees
where emp_lname like "D%";