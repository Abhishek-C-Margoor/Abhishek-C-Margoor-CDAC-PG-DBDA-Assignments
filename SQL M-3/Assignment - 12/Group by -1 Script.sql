use hr;
-- use hr database

-- 1
select year(hire_date), count(employee_id)
from employees
group by year(hire_date);

-- 2

select d.department_name,d.department_id,count(e.employee_id)
from employees e 
right join departments d on 
e.department_id = d.department_id
group by 1,2;

-- 3 
select department_name ,sum(salary)
from employees e
right join departments d on 
e.department_id = d.department_id
group by 1
order by 2 desc;

-- 4
select job_id , count(*) as Total_num_Jobs
from employees
group by 1;

-- 5
select sum(salary) as total_salary_payable
from employees;

-- 6
select min(salary)
from employees;

-- 7
select max(salary)
from employees;

-- 8 
select department_id,avg(salary),count(employee_id)
from employees
where department_id = 90
group by 1;

-- 9
select max(salary) as highest,min(salary) as lowest, sum(salary) as Total_Salary,Avg(salary) as Average_Salary
from employees;

-- 10
select job_title,count(*)
from employees e
left join jobs j on
e.job_id = j.job_id
group by 1;

-- 11
select (max(salary) - min(salary)) as Diff_Salary
from employees;

-- 12
select manager_id ,min(salary) as lowest_paid_employee_salary
from employees
group by 1
order by 2;

-- 13
Select department_id,sum(salary) as Total_salary
from employees
group by 1;

-- 14 
select avg(salary),Job_ID
from employees
where job_id <> "IT_PROG"
group by 2;

-- 15
select job_id,sum(salary) As Total_Salary,max(salary) As Highest_Salary,min(salary) as Lowest_Salary,Avg(salary) as Average_Salary
from employees
group by job_id;

-- 16
select job_id,max(salary) As Highest_Salary
from employees
group by 1
having max(salary) > 4000;

-- 17 
select avg(Salary) as Average_Salary,department_id
from employees 
group by department_id
having count(employee_id)>10;


