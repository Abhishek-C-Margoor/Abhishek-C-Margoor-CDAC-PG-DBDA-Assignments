use hr;
-- 1. 
select concat(first_name,' ', last_name), salary 
from employees 
where salary>(select salary from employees where last_name='Bull');

-- 2. 
select concat(first_name,' ', last_name) as full_name 
from employees 
where department_id in (select department_id 
from departments where department_name='IT');


-- 3. 
select concat(first_name,' ', last_name) 
from employees 
where manager_id in (select manager_id 
from departments where location_id in (select location_id 
from locations where country_id="US"));


-- 4.
select concat(first_name,' ', last_name) 
from employees 
where manager_id in(select manager_id from departments);


-- 5. 
select concat(first_name,' ', last_name) 
from employees 
where salary>(select avg(salary) from employees);


-- 6.
select concat(first_name,' ', last_name) as full_name
from employees 
where (salary, job_id) in (select min_salary, job_id from jobs);

-- 7.
select first_name, last_name, 
salary from employees where 
salary>(select avg(salary) from employees where department_id 
in ( select department_id from departments where department_name 
in ('IT', 'IT Helpdesk', 'IT Support')));

-- 8. 
select first_name, last_name, salary 
from employees 
where salary>(select salary from employees where last_name="Bell");

-- 9. 
select first_name, last_name, salary 
from employees 
where salary in(select min_salary from jobs);


-- 10. 
select first_name, last_name, salary 
from employees 
where salary >(select avg(salary) from employees);

-- 11
select first_name, last_name, salary 
from employees 
where salary >(select max(salary) from employees 
where job_id in (select job_id from jobs
where job_id='SH_CLERK')) 
order by salary asc;

-- 12. 
select e.first_name, e.last_name , e.employee_id, d.department_name 
from employees e 
join departments d on d.department_id = e.department_id
where d.department_name in (select department_name from departments);

-- 13. 
select e.employee_id, e.first_name, e.last_name, d.department_name from employees e
join departments d on
d.department_id=e.department_id;

-- 14. 
select employee_id, first_name, last_name, salary 
from employees where salary> (select avg(salary) from employees 
where department_id in(select department_id from departments));

-- 15. 
select * from employees where employee_id%2=0;

-- 16. 
select salary from employees 
order by salary desc 
limit 1 offset 4;

-- 17. 
select salary from employees order by salary asc limit 1 offset 3;

-- 18.
select * from employees 
order by employee_id desc limit 10;

-- 19. 
select department_id, department_name 
from departments 
where department_id not in(select distinct department_id 
from employees where department_id is not null);


-- 20.
select salary from employees order by salary desc limit 3;

-- 21. 
select salary from employees order by salary asc limit 3;

-- 22.
select distinct salary
from (select salary,dense_rank() over (order by salary desc) as salary_rank
  from employees) as RankedSale
where salary_rank = 3;


-- 23
select employee_id,first_name,salary,department_id
from employees e1
where salary > (select avg(salary)
    from employees e2
    where e2.department_id = e1.department_id );
  
-- 24
select department_name 
from departments 
where department_id in(select department_id
from employees group by department_id
having count(employee_id) >= 10);
 
-- 25
select concat(first_name," ",last_name) as Full_name 
from employees 
where department_id in(select department_id
from employees where salary in(select sum(salary) from employees 
group by department_id));

-- 26
select avg(salary) as average_salary
from employees
where hire_date > (current_date()- interval '3' year);

-- 27
  select first_name,last_name
  from employees
  where manager_id in(select manager_id
  from employees where employee_id=123);
  
-- 28
select d.department_name, avg(e.salary) as average_salary
from employees e
join departments d on e.department_id = d.department_id
group by d.department_name
ORDER BY average_salary DESC
LIMIT 1;

-- 29
select first_name, last_name
from employees
where salary > (select max(e.salary)
from employees e
join departments d on 
e.department_id = d.department_id
where d.department_name = 'Sales');

-- 30
select e.first_name, e.last_name
from employees e
join employees m on e.manager_id = m.employee_id
where m.salary > 100000;


-- 31
select distinct d.department_name
from departments d
join employees e on 
d.department_id = e.department_id
where e.hire_date < (current_date() - interval '5' year);

-- 32
select first_name, last_name, salary
from employees
where salary = (select max(salary)
from employees
where salary < (select max(salary) from employees));

﻿

