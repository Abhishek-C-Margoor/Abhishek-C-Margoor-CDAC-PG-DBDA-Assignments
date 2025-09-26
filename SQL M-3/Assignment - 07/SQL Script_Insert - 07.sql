use hr;
-- 1
insert into countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
values ('IN', 'India', 3);
-- customer_demographicscustomersemployee_territoriescustomersorder_detailsregionregion2
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME)
VALUES ('JP', 'Japan');

-- 3
CREATE TABLE country_new AS SELECT * FROM countries;

-- 4
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
VALUES ('AU', 'Australia', NULL);
-- 5
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID) VALUES
('DE', 'Germany', 1),
('FR', 'France', 1),
('BR', 'Brazil', 2);
-- 6
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
SELECT COUNTRY_ID, COUNTRY_NAME, REGION_ID FROM country_new;
-- 7
CREATE TABLE jobs (
    job_id VARCHAR(20) PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL
);
-- 8
INSERT INTO jobs (job_id, job_title) VALUES ('IT_PROG', 'IT Programmer');
-- 9
ALTER TABLE countries
ADD CONSTRAINT uq_country_region UNIQUE (COUNTRY_ID, REGION_ID);
INSERT INTO countries (COUNTRY_ID, REGION_ID) VALUES ('CA', 2);
-- 10
CREATE TABLE countries_auto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    country_id VARCHAR(2) NOT NULL UNIQUE,
    country_name VARCHAR(40)
);
INSERT INTO countries_auto (country_id, country_name) VALUES ('SG', 'Singapore');

-- 11

CREATE TABLE countries_with_default (
    id INT PRIMARY KEY AUTO_INCREMENT,
    country_id VARCHAR(2) NOT NULL UNIQUE,
    country_name VARCHAR(40) DEFAULT 'N/A'
);
INSERT INTO countries_with_default (country_id) VALUES ('MX');

-- 12
CREATE TABLE job_history (
    employee_id INT,
    start_date DATE,
    job_id VARCHAR(20),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);
INSERT INTO job_history (employee_id, start_date, job_id)
VALUES (101, '2023-01-01', 'IT_PROG');

-- 13
ALTER TABLE employees
ADD CONSTRAINT fk_emp_dept_mgr
FOREIGN KEY (department_id, manager_id) REFERENCES departments(department_id, manager_id);
INSERT INTO employees (employee_id, department_id, manager_id) VALUES (207, 80, 145);

-- 14
ALTER TABLE employees
ADD CONSTRAINT fk_emp_job FOREIGN KEY (job_id) REFERENCES jobs(job_id),
ADD CONSTRAINT fk_emp_dept FOREIGN KEY (department_id) REFERENCES departments(department_id);
INSERT INTO employees (employee_id, job_id, department_id) VALUES (208, 'SA_REP', 80);