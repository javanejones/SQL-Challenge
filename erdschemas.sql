-- Create tables

CREATE TABLE "department" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" varchar   NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE "employee" (
    "emp_no" varchar   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES emp_info(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE "manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" varchar   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES emp_info(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE "emp_info" (
    "emp_no" VARCHAR   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" Date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" Date   NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE "salaries" (
    "emp_no" varchar   NOT NULL,
    "salary" int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES emp_info(emp_no)
);

CREATE TABLE "titles" (
    "emp_no" VARCHAR   NOT NULL,
    "title" varchar   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES emp_info(emp_no)
);
