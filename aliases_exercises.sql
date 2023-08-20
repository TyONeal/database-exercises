USE employees;

SELECT CONCAT(employees.employees.emp_no, ' - ', employees.employees.last_name, ', ', employees.employees.first_name) AS full_name, employees.employees.birth_date AS DOB FROM employees
ORDER BY employees.employees.emp_no LIMIT 10;