-- 1. CREATE AND USE THE DATABASE
CREATE DATABASE IF NOT EXISTS normalized_sales_db;
USE normalized_sales_db;

-- 2. DROP EXISTING TABLES (in reverse order of dependency)
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS special_chars_table;
DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS departments;

-- 3. CREATE THE NEW LOOKUP TABLES FIRST (Parent Tables)

-- New Cities Table
CREATE TABLE cities (
    city_id INT PRIMARY KEY AUTO_INCREMENT,
    city_name VARCHAR(50) NOT NULL UNIQUE
);

-- New Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);


-- 4. CREATE THE MAIN TABLES WITH FOREIGN KEYS (Child Tables)

-- Salespeople Table now references cities
CREATE TABLE salespeople (
    salesman_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    city_id INT, -- This is now an ID, not text
    commission DECIMAL(4, 2),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
) AUTO_INCREMENT=101;

-- Customers Table now references cities and salespeople
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_name VARCHAR(100) NOT NULL,
    city_id INT, -- This is now an ID, not text
    grade INT,
    salesman_id INT,
    FOREIGN KEY (city_id) REFERENCES cities(city_id),
    FOREIGN KEY (salesman_id) REFERENCES salespeople(salesman_id) ON DELETE SET NULL
) AUTO_INCREMENT=3001;

-- Orders Table (no change to structure, but depends on customers and salespeople)
CREATE TABLE orders (
    ord_no INT PRIMARY KEY AUTO_INCREMENT,
    purch_amt DECIMAL(10, 2) NOT NULL,
    ord_date DATE,
    customer_id INT,
    salesman_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES salespeople(salesman_id)
) AUTO_INCREMENT=7001;

-- Employees Table now references departments
CREATE TABLE employees (
    emp_idno INT PRIMARY KEY,
    emp_fname VARCHAR(50),
    emp_lname VARCHAR(50),
    emp_dept INT, -- This ID now officially links to the departments table
    FOREIGN KEY (emp_dept) REFERENCES departments(dept_id)
);

-- Special Characters Table (no change)
CREATE TABLE special_chars_table (
    id INT PRIMARY KEY AUTO_INCREMENT,
    col1 VARCHAR(255)
);

-- 5. INSERT DATA (Populate lookup tables first, then main tables)

-- Populate Cities (IDs will be 1, 2, 3...)
INSERT INTO cities (city_name) VALUES
('New York'), ('Paris'), ('London'), ('Rome'), ('San Jose'), ('Berlin'), ('Moscow');

-- Populate Departments
INSERT INTO departments (dept_id, dept_name) VALUES
(10, 'Sales'), (20, 'Marketing'), (30, 'Human Resources');

-- Populate Salespeople using the City IDs
-- (1='New York', 2='Paris', 3='London', 4='Rome', 5='San Jose')
INSERT INTO salespeople (salesman_id, name, city_id, commission) VALUES
(101, 'James Hoog', 1, 0.15),
(102, 'Nail Knite', 2, 0.13),
(103, 'Pitcairn', 3, 0.11),
(104, 'McLyon', 2, 0.14),
(105, 'Paul Adam', 4, 0.13),
(106, 'Lauson Hen', 5, 0.12),
(107, 'Berry Zeus', 3, 0.09);

-- Populate Customers using the City IDs
-- (1='New York', 2='Paris', 3='London', 6='Berlin', 7='Moscow')
INSERT INTO customers (customer_id, cust_name, city_id, grade, salesman_id) VALUES
(3001, 'Nick Rimando', 1, 100, 101),
(3002, 'Brad Guzan', 3, NULL, 103),
(3003, 'Graham Zusi', 6, 200, 102),
(3004, 'Fabian Johnson', 2, 300, 104),
(3005, 'Julian Green', 3, 100, 103),
(3007, 'Brad Davis', 1, 200, 101),
(3008, 'Jozy Altidor', 7, 200, 105),
(3009, 'Geoff Cameron', 6, NULL, 102);

-- Populate Orders (no change)
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(7001, 150.50, '2025-10-05', 3005, 103), (7002, 65.26, '2025-10-05', 3002, 103),
(7003, 2480.40, '2025-10-10', 3009, 102), (7004, 110.50, '2025-08-17', 3009, 102),
(7005, 3045.60, '2025-04-25', 3007, 101), (7006, 948.50, '2025-09-10', 3005, 103),
(7007, 1983.43, '2025-10-10', 3004, 104), (7008, 5760.00, '2025-09-10', 3002, 103),
(7009, 270.65, '2025-07-27', 3001, 101), (7010, 75.29, '2025-08-17', 3003, 102),
(7011, 3100.00, '2025-10-15', 3008, 105);

-- Populate Employees using Department IDs
INSERT INTO employees (emp_idno, emp_fname, emp_lname, emp_dept) VALUES
(1234, 'John', 'Smith', 10), (1235, 'Jane', 'Doe', 20),
(1236, 'Peter', 'Jones', 10), (1237, 'Mary', 'Dawson', 30),
(1238, 'David', 'Davis', 20);

-- Populate Special Characters Table (no change)
INSERT INTO special_chars_table (col1) VALUES
('this is a test'), ('this contains an underscore _ character'),
('this contains a forward/slash character'), ('this contains both _/ a combo'),
('this contains a percent % sign'), ('100% good'),
('no special chars here'), ('another_one with an underscore');

-- 6. SCRIPT COMPLETE
SELECT 'Normalized database created successfully. Ready for JOIN queries.' AS status;
