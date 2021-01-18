-- Load 1st. - Create titles
-- Drop if exists
DROP TABLE if exists titles; -- only drops if it exists

-- Create new table
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);
-- View table columns and datatypes
select * from titles;

-- Load 2nd. - Create employees
-- Drop if exists
DROP TABLE if exists employees; -- only drops if it exists

-- Create new table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
-- View table columns and datatypes
select * from employees;


-- Load 3rd. - Create Departments
-- Drop if exists
DROP TABLE if exists departments; -- only drops if it exists

-- Create new table
CREATE TABLE departments (
	dept_no VARCHAR  PRIMARY KEY,
	dept_name VARCHAR
);

-- View table columns and datatypes
select * from departments;


-- Load 4th. - Create dept_emp
-- Drop if exists
DROP TABLE if exists dept_emp; -- only drops if it exists

-- Create new table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no, dept_no)	
);
-- View table columns and datatypes
select * from dept_emp;

-- Load 5th. - Create dept_manager
-- Drop if exists
DROP TABLE if exists dept_manager; -- only drops if it exists

-- Create new table
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- View table columns and datatypes
select * from dept_manager;


-- Load 6th. - Create salaries
-- Drop if exists
DROP TABLE if exists salaries; -- only drops if it exists

-- Create new table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

-- View table columns and datatypes
select * from salaries;

