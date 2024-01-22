--- Below are the queries to create the tables for the module 9 challenge---------------------------

--Create the departments tables
CREATE TABLE departments(
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR
	
	);
SELECT *
FROM departments;

--Create the dept_manager tables
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	
	);
SELECT *
FROM dept_manager;

--Create the titles tables
CREATE TABLE titles(
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR
	
	);
SELECT *
FROM titles;

--Create the employees tables
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
		
	);
SELECT *
FROM employees;


--Create the salaries tables
CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	
	);
SELECT *
FROM salaries;

--Create the dept_emp tables	
CREATE TABLE dept_emp(
-	emp_no INT,
	dept_no VARCHAR,
	CONSTRAINT emp_deptemployees
	PRIMARY KEY (emp_no,dept_no)
		
	);
SELECT *
FROM dept_emp;



