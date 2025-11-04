
use hr;
-- 1
select concat(first_name," ",last_name) as Full_Name
from employees;

-- 2
select lower(first_name),upper(last_name)
from employees;

-- 3
select upper(country_name)
from countries;

-- 4
select first_name,length(first_name)
from employees;

-- 5
select email,length(first_name)
from employees;

-- 6
select substring(first_name,1,3) as characters
from employees;

-- 7
select substring(first_name,1,4) as characters
from employees;

-- 8
select last_name,instr(upper(last_name),"A") as postions_a
from employees;

-- 9
select job_title,instr(upper(job_title),"IT") as Position_of_it
from jobs;

-- 10
select first_name,replace(upper(first_name),"A","X") as Afer_rep
from employees;

-- 11
select region_name,replace(upper(region_name),'EUROPE','EU')
from regions;

-- 12
select first_name,trim(first_name)
from employees;

-- 13
select city,rtrim(city)
from locations;

-- 14
select email,left(email,5) as first_five
from employees;

-- 15
select country_name,right(country_name,3) as By_using_Right
from countries;
-- 16
select email, substring(email, instr("@",email)+1, length(email)) as domain
from employees;

-- 17
select * from employees;
select phone_number,substring(phone_number,instr("+",phone_number),instr(" ",phone_number))
from employees;

-- 18
	select first_name,last_name,if(first_name like last_name,"0","1") as To_Check
    from employees;
    
-- 19
	select region_name,case 
						when upper(trim(REGION_NAME)) = "ASIA" then 0
                        else 1
                        end as true_or_false
    from regions;

-- 20
	select concat(first_name,"-",last_name,"-",job_title) as Using_concat
    from employees,jobs;

-- 21
	select email,substring(email,1, instr("@",email)+1) as username
    from employees;

-- 22
	select last_name,replace(lower(last_name),"e","E")
    from employees;
    
-- 23
	select instr(first_name,"o"),first_name
    from employees;

-- 24
	select trim(city),substring(city,1,3)
    from locations;

-- 25
	select LAST_NAME, instr(LAST_NAME, 'n') as position_of_n
	from employees
	where LAST_NAME like '%n%';
    
-- 26
	select LAST_NAME, instr(LAST_NAME, 'a') as position_of_n
	from employees;
    
-- 27
	select JOB_TITLE, instr(JOB_TITLE, 'e') as position_of_e
	from jobs
	where instr(JOB_TITLE, 'e') > 5;

-- 28 
	select FIRST_NAME,LAST_NAME
	from employees
	where FIRST_NAME < LAST_NAME;
		
-- 29 
	select DEPARTMENT_NAME
	from departments
	where find_in_set(DEPARTMENT_NAME, 'IT,HR') > 0;

-- 30
	select FIRST_NAME,length(FIRST_NAME) as name_length
	from employees
	where length(FIRST_NAME) > 6;
    
-- 31
    select COUNTRY_NAME
	from countries
	where COUNTRY_NAME in ('China', 'India', 'Japan');
    
-- 32
select FIRST_NAME, LAST_NAME, DEPARTMENT_ID
from employees
where DEPARTMENT_ID in (50, 60, 70);

-- 33
    select COUNTRY_NAME,left(COUNTRY_NAME, 2) as first_two_chars,
    right(COUNTRY_NAME, 2) as last_two_chars
	from countries;
    
-- 34
    select LAST_NAME, instr(LAST_NAME, 'o') as position_of_o,
    length(LAST_NAME) as name_length
	from employees
	where instr(LAST_NAME, 'o') > length(LAST_NAME) / 2;
    
-- 35
    select FIRST_NAME,instr(FIRST_NAME, 'a') as position_of_a,
    instr(FIRST_NAME, 'e') as position_of_e
	from employees
	where FIRST_NAME like '%a%' and FIRST_NAME like '%e%';
    
-- 36
	select FIRST_NAME,EMAIL,substring_index(EMAIL, '@', -1) as email_domain
	from employees
	where substring_index(EMAIL, '@', -1) = 'example.com';
    
-- 37 
	select count(*) as employee_count
	from employees
	where DEPARTMENT_ID in (50, 60, 70);
    
-- 38
    select COUNTRY_NAME, REGION_ID
	from countries
	where  REGION_ID in (1, 3);
    
-- 39
    select FIRST_NAME, LAST_NAME, DEPARTMENT_ID,SALARY
	from employees
	where DEPARTMENT_ID in (50, 60, 70) or SALARY > 10000;
    
-- 40
    select FIRST_NAME,LAST_NAME,DEPARTMENT_ID,MANAGER_ID
	from employees
	where DEPARTMENT_ID in (50, 60) and MANAGER_ID in (103, 108);
    
-- 41
	select concat(first_name,",",last_name,",",country_name) as Full_details
    from employees e
    join departments d on 
    d.DEPARTMENT_ID=e.DEPARTMENT_ID
    join locations l on 
    d.LOCATION_ID=l.LOCATION_ID
    join countries c on 
    l.COUNTRY_ID=c.COUNTRY_ID
    ;
    
-- 42
	select case 
			when salary> 8000 then upper(first_name)
				else first_name end as first_condition,
			case
            when salary<8000 then lower(last_name)
            else last_name
		end as last_condition
    from employees ;
    