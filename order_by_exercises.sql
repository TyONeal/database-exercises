USE employees;

SELECT employees.employees.* FROM employees
WHERE employees.employees.first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT employees.employees.* FROM employees
WHERE employees.employees.first_name IN ('Irena', 'Vidya', 'Maya') LIMIT 750;

SELECT DISTINCT employees.employees.* FROM employees
WHERE employees.employees.last_name LIKE ('E%') ORDER BY emp_no ASC;

SELECT DISTINCT employees.employees.* FROM employees
WHERE employees.employees.last_name LIKE ('%q%');

SELECT employees.employees.* FROM employees
WHERE employees.employees.first_name = 'Irena' OR employees.employees.first_name = 'Vidya' OR employees.employees.first_name = 'Maya' LIMIT 750;

SELECT employees.employees.* FROM employees
WHERE employees.employees.first_name = 'Irena' OR employees.employees.first_name = 'Vidya' OR employees.employees.first_name = 'Maya' AND employees.employees.gender = 'male' LIMIT 750;

SELECT DISTINCT employees.employees.* FROM employees
WHERE employees.employees.last_name LIKE ('E%') OR employees.employees.last_name LIKE ('%e')
ORDER BY emp_no DESC;

SELECT DISTINCT employees.employees.* FROM employees
WHERE employees.employees.last_name LIKE ('E%') AND employees.employees.last_name LIKE ('%e');

SELECT DISTINCT employees.employees.* FROM employees
WHERE employees.employees.last_name LIKE ('%q%') AND employees.employees.last_name NOT LIKE ('%qu%');