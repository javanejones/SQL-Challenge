-- Create tables for department
create table department(
	dept_no VARCHAR not null,
	dept_name varchar not null
);

-- create table for employees
create table employee(
	emp_no varchar not null,
	dept_no VARCHAR not null
);

-- create table for manager
create table manager(
	dept_no VARCHAR not null,
	emp_no varchar not null
);

-- create table for employee information
create table emp_info(
	emp_no VARCHAR not null,
	emp_title_id varchar not null,
	birth_date Date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,	
	hire_date Date not null
);

-- create table for salary
create table salaries(
	emp_no varchar not null,
	salary int not null
);

-- create table for title
create table titles(
	emp_title_id VARCHAR not null,
	title varchar not null
);
