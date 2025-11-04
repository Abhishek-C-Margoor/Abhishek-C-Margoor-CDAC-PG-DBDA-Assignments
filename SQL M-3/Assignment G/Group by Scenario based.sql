use northwind;

-- 1
select concat(first_name," ",last_name) as Full_name,count(order_id) as Total_orders,avg(freight) as avg_freight,
year(order_date) as Order_Date,case 
when count(order_id) > 30 then "High Volume"
when count(order_id) between 15 and 30 then  "Medium Volume"
when count(order_id) < 15 then "Low Volume"
end as Employee_Category
from employees e
join orders o on 
e.employee_id = o.employee_id
group by 1,4
having count(order_id) > 10
order by 1,4;

-- 2
select c.customer_id,month(o.order_date) as order_month,count(order_id) as total_orders,avg(freight) as Avg_freight,
case  
when month(o.order_date) in (12,01,02) then "High Season "
when month(o.order_date) in (03,04,05,09,10,11) then "Medium Season"
when month(o.order_date) in (06,07,08) then "Low Season"
end as season_type
from customers c 
join orders o on 
c.customer_id=o.customer_id
group by 1,2,5
having count(order_id) > 2
order by 1,3;



where year(order_date) = 1997 ;