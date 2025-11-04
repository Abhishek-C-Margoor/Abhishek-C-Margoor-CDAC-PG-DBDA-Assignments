use hr;
-- 1
select employee_id as ID,first_name as First,last_name as Last
from employees;

-- 2
select job_id as JobCode,job_title as Title,min_salary as MinimumSalary
from jobs;

-- 3
select e.FIRST_NAME ,e.LAST_NAME 
from employees e;

-- 4 
select EMPLOYEE_id,concat(first_name," ",last_name) as full_name
from employees;

-- 5
select employee_id,first_name as name,salary as Income
from employees;

-- 6
select employee_id ,first_name,department_name
from employees e
join departments d on 
e.department_id = d.DEPARTMENT_ID;

-- 7 
select country_name,region_name
from countries c 
join regions r on
c.region_id = r.REGION_ID
where c.REGION_ID>2;

-- 8
select first_name,last_name
from employees e
join departments d on 
e.department_id = d.DEPARTMENT_ID
where DEPARTMENT_NAME = "IT";

-- 9
select round(Avg(salary)) as AverageSalary
from employees e
group by e.department_id;

-- 10
select r.region_name ,count(c.country_id)as CountryCount
from regions r
join countries c on 
c.REGION_ID = r.REGION_ID
group by 1;
