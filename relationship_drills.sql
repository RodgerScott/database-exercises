USE employees;

#================================= RELATIONSHIP DRILLS
-- concat the max salaries of the first two employees
-- get current manager name of Sales department (use subqueries)
-- get all senior engineers in customer service department
-- get all first and last names of current Sales department employees
-- get the name of the employee with the highest salary
#================================= RELATIONSHIP BONUSES
-- what is the most common birthday in the company? least common?
-- what is the average salary of managers by department?
-- how many employees currently work in each department?
-- what is the average salary for each department?
-- what was the average salary in the 80s? By department?
-- how many times (on average) do employees switch titles?
-- how many times (on average) do employees get a raise?
-- what is the highest paying job title historically for women and men? For women only? For men only?
-- does the older halve of current employees make more or less than the younger halve?
-- list the oldest current employees by title in each department
-- list the 5 historically lowest paid managers
-- EXTRA HARD BONUS --
-- what employees were hired during the year Nevermind was released and after?
#(you will need to use the codeup_test_db and employees db)

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

SELECT DISTINCT e.first_name, e.last_name, manager.to_date
FROM employees e
JOIN dept_manager manager ON e.emp_no = manager.emp_no
JOIN departments d ON manager.dept_no = d.dept_no
WHERE d.dept_name IN (
  SELECT d.dept_name
  FROM departments
  WHERE manager.to_date = '9999-01-01' AND d.dept_name = 'sales'
);

