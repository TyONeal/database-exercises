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

SELECT CONCAT(employees.employees.first_name, ' ',  employees.employees.last_name) FROM employees
WHERE employees.employees.last_name LIKE ('E%') AND employees.employees.last_name LIKE ('%e');

SELECT DISTINCT employees.employees.* FROM employees
WHERE employees.employees.last_name LIKE ('%q%') AND employees.employees.last_name NOT LIKE ('%qu%');

SELECT DISTINCT employees.employees.* FROM employees
WHERE DAY(employees.employees.birth_date) = 25 AND MONTH(employees.employees.birth_date) = 12;

SELECT DISTINCT employees.employees.* FROM employees
WHERE YEAR(employees.employees.hire_date) BETWEEN 1990 AND 2000
AND DAY(employees.employees.birth_date) = 25 AND MONTH(employees.employees.birth_date) = 12
ORDER BY employees.employees.hire_date DESC;

SELECT DATEDIFF(CURDATE(), employees.employees.hire_date), employees.employees.first_name, employees.employees.last_name FROM employees
WHERE YEAR(employees.employees.hire_date) BETWEEN 1990 AND 2000
AND DAY(employees.employees.birth_date) = 25 AND MONTH(employees.employees.birth_date) = 12
ORDER BY employees.employees.hire_date DESC;
