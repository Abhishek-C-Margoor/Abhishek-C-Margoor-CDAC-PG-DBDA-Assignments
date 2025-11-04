use normalized_sales_db;

-- 1
select round(sum(purch_amt),2) as Total_purchase
from orders o 
group by o.ord_no;

-- 2 
select round(avg(purch_amt),2) as Average_Purchase_amount
from orders o 
group by o.ord_no;

-- 3
select count(distinct(salesman_id) ) as count_SalesPeople
from salespeople;

-- 4
select count(customer_id) as number_customer
from customers;

-- 5
select count(customer_id) as number_customers
from customers
where grade is not null;

-- 6
select max(purch_amt) as Max_Purchase_amount
from orders;

-- 7
select min(purch_amt) as min_Purchase_amount
from orders;

-- 8
select city_id, max(grade) as maximum_grade
from customers
group by 1;

-- 9
select customer_id,max(purch_amt) as maximum_purchase_amount
from orders
group by 1;

-- 10
select customer_id,ord_date, max(purch_amt) as highest_purchase_amount
from orders
group by customer_id,ord_date;

-- 11
select salesman_id,max(purch_amt) as Maximum_Purchase_Amount
from orders
where ord_date = '2012-08-17'
group by salesman_id;

-- 12
select customer_id,ord_date,max(purch_amt) as Maximum_Purchase_Amount
from orders
group by customer_id,ord_date
having max(purch_amt) > 2000.00;
    
-- 13
select customer_id,ord_date,max(purch_amt) as Maximum_Purchase_Amount
from orders
where purch_amt between 2000 and 6000
group by customer_id,ord_date;
    
-- 14
select customer_id,ord_date,max(purch_amt) as Maximum_Purchase_Amount
from orders
group by customer_id,ord_date
having max(purch_amt) in (2000, 3000, 5760, 6000);

-- 15
select customer_id, max(purch_amt) as Maximum_Purchase_Amount
from orders
where customer_id between 3002 and 3007
group by customer_id;

-- 16
select customer_id, max(purch_amt) as Maximum_Purchase_Amount
from orders
where customer_id between 3002 and 3007
group by customer_id
having max(purch_amt) > 1000;
    
-- 17
select salesman_id, max(purch_amt) as Maximum_Purchase_Amount
from orders
where salesman_id between 5003 and 5008
group by salesman_id;
    
-- 18
select count(ord_no) as Number_of_Orders
from orders
where ord_date = '2012-08-17';
    
-- 19
select c.city_name,count(s.salesman_id) as number_of_Salespeople
from salespeople s
join cities c on 
    s.city_id = c.city_id
group by c.city_name;
    
-- 20
select ord_date, salesman_id,count(ord_no) as Number_of_Orders
from orders
group by ord_date,salesman_id;
    
-- 21

-- 22

-- 23

-- 24

-- 25
select emp_dept as Department_Code,count(emp_idno) as Number_of_Employees
from employees
group by emp_dept;

-- 26
select d.dept_name,count(e.emp_idno) as Number_of_Employees
from employees e
join departments d on 
e.emp_dept = d.dept_id
group by d.dept_name;

-- 27

-- 28

-- 29

-- 30

-- 31

-- 32