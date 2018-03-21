USE employees;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
WHERE manager.to_date LIKE '9999%'
ORDER BY d.dept_name;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager as manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
WHERE manager.to_date LIKE '9999%' && e.gender = 'f'
ORDER BY d.dept_name;



SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager as manager
    ON e.emp_no = manager.emp_no
  JOIN departments as d
    ON manager.dept_no = d.dept_no
WHERE manager.to_date LIKE '9999%' && e.gender = 'f'
ORDER BY d.dept_name;


SELECT t.title AS Title, COUNT(t.title) AS Count
FROM employees e
  JOIN titles as t
    ON e.emp_no = t.emp_no
  JOIN dept_emp de
    ON e.emp_no = de.emp_no
  JOIN departments as d
    ON de.dept_no = d.dept_no
WHERE t.to_date LIKE '9999%'
      AND d.dept_name LIKE 'Cust%'
GROUP BY t.title
ORDER BY title;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary AS Current_Salary
FROM employees e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON d.dept_no = manager.dept_no
  JOIN salaries s
    ON e.emp_no = s.emp_no
WHERE s.to_date LIKE '9999%'
      AND manager.to_date LIKE '9999%'
ORDER BY d.dept_name ASC;


SELECT


