use northwind;
-- rank 
-- 1
select product_name,category_id,unit_price,rank() over (partition by category_id order by unit_price desc) as ranks
from products;

-- 2
with RankedProducts as (
select product_name,category_id,unit_price,dense_rank() over (partition by category_id order by unit_price desc ) as ranks
from products
)

select product_name,category_id,unit_price
from RankedProducts
where ranks<=3
order by 2,3 desc;

-- 3
with Employee_Orders as (
select e.employee_id,e.first_name,e.last_name,count(o.order_id) as Total_orders_handled
from employees e
left join orders o on
e.EMPLOYEE_ID = o.employee_id
group by 1,2,3

)

select employee_id,first_name,last_name,Total_orders_handled , rank() over (order by Total_orders_handled desc) as Employee_Rank
from employee_Orders
order by Employee_rank;

-- 4
select * from orders; 

select customer_id,order_id,freight,rank() over (partition by customer_id order by freight desc) as Freight
from orders;

-- 5 
select supplier_id,count(product_id),dense_rank() over (order by count(product_id)desc)
from products
group by 1
order by 3;

-- 6 
with Customer_details as
(
select c.customer_id,c.contact_name,sum(od.unit_price*od.quantity) as Total_amount
from customers c
join orders o on 
c.customer_id = o.customer_id
join order_details od on
o.order_id = od.order_id
group by 1,2
)

select contact_name, Total_amount, dense_rank() over (order by total_amount desc) as CustomerRank
from Customer_Details
order by CustomerRank;

-- 7
with Employee_Sales as
( select concat(First_name," ",last_name) as Employee_name,sum(unit_price*quantity) as Total_Sales
from employees e
join orders o
on e.employee_id=o.EMPLOYEE_ID
join order_details od on 
od.order_id = o.order_id
group by 1
)

select Employee_name,Total_sales,dense_rank() over (order by Total_Sales desc) as EmployeeRank
from Employee_Sales
order by EmployeeRank;

-- 8
with Customer_country as 
(
select c.customer_id,c.contact_name,c.country,count(o.order_id) as Total_orders
from customers c 
join orders o on 
c.customer_id = o.customer_id
group by 1,2,3
)
select Contact_Name,Country,Total_Orders,rank() over (partition by country order by total_orders desc) as CustomerRanking
from Customer_Country
order by country,CustomerRanking;

-- 9
with Order_Values as 
( 
select o.order_id,Sum(unit_price*quantity) as Total_Amount
from orders o 
right join order_details od  on
o.order_id=od.order_id
group by 1
)

select Order_id,Total_amount,rank() over ( order by Total_amount desc) as RankOfSales
from Order_Values
order by 3;

-- 10 
with ProductFrequency
as 
(
select product_name,count(od.order_id) as ProductFreq
from products p 
join order_details od on 
p.product_id = od.product_id
group by 1
)
select Product_name,ProductFreq,rank() over (order by ProductFreq desc) as ProductRank
from ProductFrequency
order by 3;

-- 11
with employees_join as
(
select concat(first_name, " ",last_name)as full_name,hire_Date
from employees
)
select Full_name,Hire_date,Rank() over (order by Hire_Date ) as Priority
from employees_join
order by Priority;

-- 12
select * from products;
with Product_Details as
( select product_id,Product_name, Units_in_stock
from products
)
select Product_name,Units_in_Stock,rank() over ( order by Units_in_Stock desc) as StockRank
from Product_Details
order by StockRank;

-- 13
with customer_details as 
( select c.customer_id,contact_name,sum(od.unit_price*od.quantity) as Total_amount
from customers c
join orders o on 
c.customer_id = o.customer_id 
join order_details od 
on o.order_id =od.order_id
group by 1,2
), CustomerRanks as
(
select Customer_id,contact_name,Total_amount,dense_rank() over (order by total_amount desc) as CustomerRank
from Customer_details)

select Contact_Name,Total_amount,CustomerRank
from CustomerRanks
where CustomerRank<=5
order by 3 ;
