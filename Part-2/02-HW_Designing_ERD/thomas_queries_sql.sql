--Select employee number name gender and join with salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--select employees where hire date is in 1986 
select * from employees
where employees.hire_date 
between '1986-01-01' and '1986-12-31';

--select department manager info and join to get department name and employee names
select department_manager.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name, department_manager.from_date, department_manager.to_date
FROM department_manager
inner join departments 
on department_manager.dept_no = departments.dept_no
inner join employees 
on department_manager.emp_no = employees.emp_no;

--list department of each employee with the employee number, employees.last name, employees.first name, department name
select employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
from employees
inner join department_employees
on employees.emp_no = department_employees.emp_no
inner join departments 
on department_employees.dept_no = departments.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where employees.first_name = 'Hercules' and employees.last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no,employees.last_name, employees.first_name,  departments.dept_name
from employees
inner join department_employees
on employees.emp_no = department_employees.emp_no
inner join departments
on department_employees.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no,employees.last_name, employees.first_name,  departments.dept_name
from employees
inner join department_employees
on employees.emp_no = department_employees.emp_no
inner join departments
on department_employees.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'; 


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT  count(employees.last_name), employees.last_name
FROM employees
GROUP BY employees.last_name
Order by count(employees.last_name) DESC;

