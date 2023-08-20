SELECT DISTINCT employees.titles.title FROM employees.titles;

SELECT DISTINCT employees.employees.first_name, employees.employees.last_name FROM employees
WHERE employees.employees.last_name LIKE ('E%') AND employees.employees.last_name LIKE ('%e')
GROUP BY employees.employees.first_name, employees.employees.last_name ORDER BY last_name ASC;

SELECT employees.employees.last_name, COUNT(employees.employees.last_name) FROM employees
WHERE employees.employees.last_name LIKE ('%q%') AND employees.employees.last_name NOT LIKE ('%qu%')
GROUP BY employees.employees.last_name ORDER BY last_name ASC;

SELECT COUNT(employees.employees.gender), employees.employees.gender FROM employees
WHERE employees.employees.first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY employees.employees.gender;
