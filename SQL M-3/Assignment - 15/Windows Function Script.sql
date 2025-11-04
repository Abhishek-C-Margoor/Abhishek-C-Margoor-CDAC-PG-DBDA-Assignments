use hr;

-- 1. Find the top 3 highest paid employees in each department using RANK().

with cte1 as 
(select employee_id,department_id ,salary , 
rank() over(partition by DEPARTMENT_ID order by salary desc ) 
as partioned from employees)
select * from cte1 where partioned <=3;


-- 2.Assign a unique row number to each employee within their department using ROW_NUMBER() based on salary descending

with ct1 as (select * , 
row_number() over(partition by department_id order by salary desc) as Ranks from employees)
select *
from ct1 
order by department_id,ranks asc;

-- 3. List departments where at least two employees share the same salary rank using DENSE_RANK().
with cte3 as 
(select department_id ,salary , dense_rank() over(partition by department_id order by salary) as sal_rank from employees
)
select department_id,sal_rank
from cte3
group by department_id,sal_rank
having count(*) >=2 ; 


-- 4. Find the top 3 highest paid employees in each department using RANK().

with cte5 as 
(select department_id , employee_id , salary , rank() over(partition by department_id order by salary desc) as ranked_sal from employees)

select * from cte5
where ranked_sal <= 3
order by department_id , ranked_sal,salary desc;

-- 5. Assign a unique row number to each employee within their department using ROW_NUMBER() based on salary descending.
with cte1 as 
(select  *, row_number() over(partition by department_id order by SALARY desc) as rnk from employees)
select * from cte1
order by department_id,rnk;

-- 6. List departments where at least two employees share the same salary rank using DENSE_RANK().
with cte7 as(
select department_id , employee_id , salary ,dense_rank() over(partition by DEPARTMENT_ID order by salary desc) as rankedone from  employees
)
select department_id ,rankedone
from cte7
group by department_id,rankedone
having count(*) >= 2;

-- 7. Divide employees into 4 equal salary groups using NTILE(4) and display the group number along with employee details.

-- Aggregate Window Functions
-- For each employee, show their salary and the average salary of their department using AVG() as a window function.
select employee_id , salary , avg(salary) over(partition by department_id order by employee_id) from employees;

-- 8. Show the running total of salaries for each department ordered by hire date using SUM() window function.
select department_id , sum(salary) over(partition by department_id order by hire_date asc) from employees;

-- 9. Find the maximum salary in each department and compare it with each employee’s salary.

select department_id ,max(salary) over(partition by department_id) as dept_wise_sal ,
case
	when salary =  max(salary) over(partition by department_id) 
    then "highest salary in the department"
    else "low salary"
end as comparison
from employees;

-- 10. For each employee, show their salary and the average salary of their department using AVG() as a window function.
select salary,employee_id , avg(salary) over(partition by department_id) from employees;


-- 11. Show the running total of salaries for each department ordered by hire date using SUM() window function.
select department_id , sum(salary) over(partition by department_id order by hire_date) from employees;  

-- 12. Find the maximum salary in each department and compare it with each employee’s salary.

select department_id ,max(salary) over(partition by department_id) as dept_wise_sal ,
case
	when salary =  max(salary) over(partition by department_id) 
    then "highest salary in the department"
    else "low salary"
end as comparison
from employees;

