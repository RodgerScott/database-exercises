USE employees;

-- 1. concat the max salaries of the first two employees

SELECT CONCAT(e.first_name, ' ', e.last_name) AS First_2_Employees, salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
WHERE e.emp_no < 10003 AND s.to_date > curdate();

-- 2 get current manager name of Sales department (use subqueries)

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Sales_Department_Manager
FROM employees e
JOIN dept_manager dep
ON e.emp_no = dep.emp_no
  JOIN titles t
  ON e.emp_no = t.emp_no
JOIN departments part
ON dep.dept_no = part.dept_no
WHERE part.dept_name LIKE 'SALES' AND t.title = 'Manager' AND dep.to_date > curdate();