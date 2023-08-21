USE employees;

SHOW tables;

DESCRIBE current_dept_emp;

SELECT departments.dept_name AS "Department Name", CONCAT(employees.first_name, ' ', employees.last_name) AS "Department Manager"
FROM employees
JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
JOIN departments
ON dept_manager.dept_no = departments.dept_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name ASC;

DESCRIBE employees

SELECT departments.dept_name AS "Department Name", CONCAT(employees.first_name, ' ', employees.last_name) AS "Department Manager"
FROM employees
JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
JOIN departments
ON dept_manager.dept_no = departments.dept_no
WHERE employees.employees.gender = 'F' AND to_date = '9999-01-01'
ORDER BY dept_name ASC;

DESCRIBE titles;

SHOW TABLES;

DESCRIBE current_dept_emp;

SELECT titles.title AS "title", COUNT(employees.emp_no) AS "Total"
FROM titles
LEFT JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE employees.departments.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01'
GROUP BY titles.title
ORDER BY COUNT(employees.employees.emp_no) DESC;

DESCRIBE salaries;

SELECT departments.dept_name AS "Department Name", CONCAT(employees.first_name, ' ', employees.last_name) AS "Department Manager", salaries.salary AS "Salary"
FROM employees
         JOIN dept_manager
              ON employees.emp_no = dept_manager.emp_no
         JOIN departments
              ON dept_manager.dept_no = departments.dept_no
        JOIN salaries
            ON salaries.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01'
ORDER BY dept_name ASC;

DESCRIBE dept_manager;

SHOW TABLES;

DESCRIBE TITLES;

DESCRIBE current_dept_emp;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Employee, departments.dept_name as "Department Name", CONCAT(Managers.first_name, ' ', Managers.last_name) AS Manager
FROM employees
        JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
        JOIN departments ON dept_emp.dept_no = departments.dept_no
        JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
        JOIN employees AS Managers ON dept_manager.emp_no = Managers.emp_no
WHERE dept_emp.to_date = '9999-01-01' AND dept_manager.to_date = '9999-01-01';







