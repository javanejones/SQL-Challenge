select * from department
-- from department TABLE

select * from employee
-- from department TABLE

select * from manager
-- from manager TABLE

select * from emp_info
-- from employee TABLE

select * from salaries
-- from salary TABLE

select * from titles
-- from title TABLE

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT emp_info.emp_no, emp_info.last_name, emp_info.first_name, emp_info.sex, salaries.salary
from emp_info
inner join salaries on
emp_info.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select emp_info.first_name, emp_info.last_name, emp_info.hire_date from emp_info
where emp_info.hire_date between '1986-01-01' and '1986-12-31'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select department.dept_name, department.dept_no, manager.emp_no, emp_info.last_name, emp_info.first_name
from department
join manager on
department.dept_no = manager.dept_no
join emp_info on
emp_info.emp_no = manager.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT emp_info.emp_no, emp_info.last_name, emp_info.first_name, department.dept_name
from emp_info
join employee on
emp_info.emp_no = employee.emp_no
join department on
department.dept_no = employee.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select emp_info.first_name, emp_info.last_name, emp_info.sex from emp_info
where emp_info.first_name = 'Hercules' and emp_info.last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select emp_info.emp_no, emp_info.last_name, emp_info.first_name, department.dept_name
from emp_info
join employee on 
emp_info.emp_no = employee.emp_no
join department on
department.dept_no = employee.dept_no
where dept_name like 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select emp_info.emp_no, emp_info.last_name, emp_info.first_name, department.dept_name
from emp_info
join employee on 
emp_info.emp_no = employee.emp_no
join department on
department.dept_no = employee.dept_no
where dept_name like 'Development' or dept_name like 'Sales';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name)
from emp_info
group by last_name
order by count desc;