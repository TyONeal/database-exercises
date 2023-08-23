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
ORDER BY dept_name
;

DESCRIBE employees;

SELECT d.dept_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no
WHERE e.gender = 'F' AND to_date = '9999-01-01'
ORDER BY dept_name
;

DESCRIBE titles;

SHOW TABLES;

DESCRIBE current_dept_emp;

SELECT t.title AS "title", COUNT(t.emp_no) AS "Total"
FROM titles t
        JOIN dept_emp de
            ON t.emp_no = de.emp_no
        JOIN departments d
            ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND t.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY COUNT(t.emp_no) DESC;

DESCRIBE salaries;

SELECT d.dept_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager", s.salary AS "Salary"
FROM employees e
         JOIN dept_manager dm
              ON e.emp_no = dm.emp_no
         JOIN departments d
              ON dm.dept_no = d.dept_no
        JOIN salaries s
            ON dm.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY dept_name
;

DESCRIBE dept_manager;

SHOW TABLES;

DESCRIBE TITLES;

DESCRIBE current_dept_emp;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name as "Department Name", CONCAT(Managers.first_name, ' ', Managers.last_name) AS Manager
FROM employees e
        JOIN dept_emp de
            ON e.emp_no = de.emp_no
        JOIN departments d
            ON de.dept_no = d.dept_no
        JOIN dept_manager dm
            ON d.dept_no = dm.dept_no
        JOIN employees AS Managers
            ON dm.emp_no = Managers.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name, e.emp_no
;







