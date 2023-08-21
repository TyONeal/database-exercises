USE EMPLOYEES;

SELECT CONCAT(employees.first_name, ' ', employees.last_name), employees.hire_date
FROM employees
WHERE employees.employees.hire_date IN (SELECT hire_date FROM employees WHERE employees.employees.emp_no = 101010);

SELECT DISTINCT employees.titles.title
FROM titles
WHERE employees.titles.emp_no IN (SELECT employees.emp_no FROM employees WHERE employees.employees.first_name = 'Aamod');

SELECT CONCAT(employees.first_name, ' ', employees.last_name)
FROM employees
WHERE employees.employees.emp_no IN (SELECT dept_manager.emp_no FROM dept_manager WHERE employees.employees.gender = 'F' AND dept_manager.to_date = '9999-01-01');

DESCRIBE departments;

SELECT dept_name
FROM departments
WHERE departments.dept_no IN (SELECT employees.dept_manager.dept_no FROM dept_manager WHERE dept_manager.emp_no IN (SELECT employees.emp_no FROM employees WHERE employees.employees.gender = 'F' AND to_date = '9999-01-01'));

SELECT CONCAT(employees.first_name, ' ', employees.last_name)
FROM employees
WHERE employees.employees.emp_no IN (SELECT employees.salaries.emp_no FROM salaries WHERE salary IN (SELECT MAX(salary) FROM salaries))
LIMIT 1;