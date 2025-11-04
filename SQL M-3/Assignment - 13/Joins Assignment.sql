use hr;

select * from locations;
-- 1
select location_id,street_address,city,state_province,country_name
from locations l
join countries c on
l.country_id=c.country_id;

-- 2
select concat(first_name," ",last_name) as full_name,e.department_id
from employees e 
left join departments d on 
d.department_id=e.department_id;

-- 3
select concat(first_name," ",last_name) as full_name,Job_title,e.department_id
from employees e 
join jobs j on 
j.job_id = e.job_id
join departments d on 
d.department_id=e.department_id
join locations l on 
l.location_id=d.location_id
where city ="London";

-- 4 
select e.employee_id,concat(e.first_name," ",e.last_name) as full_name, e.manager_id,
concat(m.first_name," ",m.first_name) as Manager_name
from employees e 
join employees m on 
e.employee_id=m.manager_id
;

-- 5
select e.employee_id,concat(e.first_name," ",e.last_name) as full_name, hire_date
from employees e 
where hire_date >(select hire_date from employees where last_name="Jones");

-- 6
select department_name,count(e.employee_id)
from departments s
join employees e on 
s.department_id=e.department_id
group by department_name;

-- 7
select e.employee_id,j.job_title,timestampdiff(day,start_Date,end_date) as Total_number_Days
from employees e 
join jobs j on 
j.job_id=e.job_id
join job_history jh on 
j.job_id=jh.job_id
where e.department_id=80;

-- 8
select m.department_id,concat(m.first_name," ",m.last_name) as Full_name
from employees e
join employees m on
e.employee_id=m.manager_id
order by 1;

-- 9
select department_name,concat(m.first_name," ",m.last_name) as manager_name,city
from employees e
join employees m on
e.employee_id=m.manager_id
join departments d on 
m.department_id=d.department_id 
join locations l on 
l.location_id=d.location_id
order by 2;

-- 10
select job_title,round(avg(salary),2 )as Avg_Salary
from employees s
join Jobs j on 
j.job_id=s.job_id
group by job_title
order by Avg_Salary;

-- 11
select job_title,concat(first_name," ",last_name) as Full_name,(salary-min_salary) as diff_Salary_Min_salary
from employees e 
join jobs j on 
e.job_id=j.job_id
order by 2,3;

-- 12
select concat(first_name," ",last_name) as Full_name,jh.*
from job_history jh 
join employees e on 
e.employee_id=jh.employee_id
where salary>10000;

-- 13
select department_name,concat(first_name," ",last_name) as Full_name,hire_Date,salary
from employees e
join departments d on 
e.department_id=d.department_id
where employee_id in(select distinct manager_id 
from employees 
where timestampdiff(year,hire_date,current_date)>15 );
