use hr;
-- 1
select *
from employees ;
-- 2
select salary 
from employees; 
-- 3 
select distinct(j.job_title)
from employees e
join jobs j on
e.job_id=j.job_id;

-- 4
select first_name,last_name,(salary*0.15) as Salary
from employees;

-- 5
select concat(e.first_name," ",e.last_name," & ",j.job_title) as "Employees & Jobs"
from employees e 
join jobs j on
j.job_id=e.job_id;

-- 6
select * from employees;
-- 7
select concat(e.first_name," ",e.last_name) as full_name ,date_format(hire_Date,"%M %d, %y")
from employees e;
-- 8 
select (length(first_name)+length(last_name)) as Count_of_characters
from employees;

-- 9
select employee_id,salary,commission_pct
from employees;

-- 10 
select d.department_id,job_title 
from employees e 
join departments d on 
e.department_id = d.department_Id
join jobs j 
on e.job_id = j.job_id;

-- 11 
select *,concat(first_name," ",last_name) as full_name
from employees
where department_id = 90;
 
 -- 12
 select *
 from employees
 where year(hire_date) > 1991;
 
 -- 13 
 select avg(e.salary) as Average_Saary
 from employees e
 join jobs j on 
 e.job_id=j.job_id
 where j.JOB_TITLE = "Programmer";
 
 -- 14 
 select *
 from employees
 where upper(first_name) = "BLAZE" or upper(last_name) = "BLAZE";
 
 -- 15
 select * 
 from employees
 where (salary * COMMISSION_PCT)> salary; 
 
 -- 16 
  select * 
 from employees
 where (salary * 0.25)> 3000; 
 
 -- 17
 select first_name, last_name
 from employees
 where length(first_name) = 6;
 
 -- 18 
 select * 
 from employees
 where month(hire_Date) = 01;
 
 -- 19
 select concat(e.first_name," ",e.last_name, " work for ",m.first_name," ",m.last_name ) as Reporting_Structure
 from employees e
 join employees m on
 m.manager_id=e.employee_id
 ;
 
 -- 20 
 select concat(first_name," ",last_name) as Full_name,job_title
 from employees e
 join jobs j
 on e.JOB_ID=j.JOB_ID
 where job_title like "%CLERK";
 
 -- 21
 select concat(first_name," ",last_name) as Full_name,timestampdiff(year,hire_date,current_date())
 from employees
 where timestampdiff(year,hire_date,current_date())>27;
 
 -- 22 
  select concat(first_name," ",last_name) as Full_name ,salary
  from employees 
  where salary< 3500;
  
  -- 23
  select concat(first_name," ",last_name) as Full_name , job_title
  from employees e 
  join jobs j on 
  e.JOB_ID=j.JOB_ID
  where job_title like "PROGRAMMER";
  
  -- 24
  select * from employees
  where year(hire_Date)=1991;
  
  -- 25
  select employee_id, first_name, last_name, hire_date, salary
from employees
where hire_date < '1991-04-01';
  
  -- 26 
select concat(e.first_name," ",e.last_name, " work for ",m.first_name," ",m.last_name ) as Reporting_Structure
,j.job_title
 from employees e
 join jobs j 
 on e.job_id = j.job_id
 join employees m on
 m.manager_id=e.employee_id
 where m.MANAGER_ID is null;
  
  -- 27
select *
from employees
where hire_date = '1991-05-01';

-- 28 
select employee_id,concat( first_name,' ',last_name )as employee_name,salary,
(extract(year from current_date) - extract(year from hire_date)) as experience_years
from employees
where manager_id = 101;

  -- 29
  select employee_id,concat(first_name,' ',last_name ) as employee_name,salary,
    (extract(year from current_date) - extract(year from hire_date)) as experience_years
from employees
where (salary / 22) > 100;
 
 -- 30
select first_name, last_name, hire_date
from employees
where hire_date <= '1991-12-31';

  -- 31 
select *
from employees
where mod(salary, 2) != 0;select *
from employees
where mod(salary, 2) != 0;
  
  -- 32 
select *
from employees
where salary between 100 and 999;

  -- 33
select *
from employees
where extract(month from hire_date) = 4;

  -- 34
select *
from employees
where extract(day from hire_date) < 19;
  
  -- 35
select *
from employees e
join jobs j on e.job_id = j.job_id
where j.job_title = 'Sales Manager'
and hire_date < (current_date - interval '10' month);
