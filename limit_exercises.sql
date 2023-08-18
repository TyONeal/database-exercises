SELECT DISTINCT employees.employees.last_name FROM employees.employees
ORDER BY last_name DESC LIMIT 10;

SELECT employees.salaries.emp_no FROM employees.salaries
ORDER BY salaries.salary DESC
LIMIT 5 OFFSET 45;