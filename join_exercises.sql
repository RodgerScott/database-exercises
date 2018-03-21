USE employees;

#2 show each department along with the name of the current manager for that department.

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
WHERE manager.to_date LIKE '9999%'
ORDER BY d.dept_name;

#3 Find the name of all departments currently managed by women.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager as manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
WHERE manager.to_date LIKE '9999%' && e.gender = 'f'
ORDER BY d.dept_name;


#4 Find the current titles of employees currently working in the Customer Service department.

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



#5 Find the current salary of all current managers.
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

# bonus
select concat(e.first_name, ' ', e.last_name) as "Employee Name",
       dept_name as "Department Name",
       concat(m.first_name, ' ',m.last_name)
                                              as "Manager"
from employees as e
  join dept_emp
    on dept_emp.emp_no     = e.emp_no
  join departments
    on departments.dept_no = dept_emp.dept_no
  join dept_manager
    on dept_emp.dept_no = dept_manager.dept_no
  join employees as m
    on m.emp_no = dept_manager.emp_no
where dept_emp.to_date like '9%' and dept_manager.to_date like '9%';



SHOW tables;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

# 2
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees e
on e.emp_no = dm.emp_no
WHERE dm.to_date LIKE '9%'
ORDER BY d.dept_name;

# 3

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
from departments as d
  join dept_manager as dm
    on d.dept_no = dm.dept_no
  join employees e
    on e.emp_no = dm.emp_no
WHERE dm.to_date LIKE '9%' AND e.gender = 'f'
ORDER BY d.dept_name;


SHOW tables;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;


# 4 customer service dept d009

SELECT title, COUNT(title)
FROM titles
GROUP BY title;


#Primary key first, the foreign KEYS!!!!!   concat_ws()

SELECT de.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees e
LEFT JOIN dept_manager dm ON e.emp_no = dm.emp_no
  JOIN departments de ON dm.dept_no = de.dept_no
WHERE dm.to_date > curdate()
ORDER BY de.dept_name;


DESCRIBE titles;
DESCRIBE departments;


-- d009

SELECT t.title, count(t.title)
FROM titles t
  LEFT JOIN dept_emp de ON de.emp_no = t.emp_no
WHERE t.to_date > curdate()
  AND de.dept_no = 'd009' AND de.to_date > curdate()
GROUP BY t.title;


SELECT d.dept_name, e.first_name, e.last_name, s.salary
FROM employees e
LEFT JOIN salaries s ON e.emp_no
= s.emp_no
LEFT JOIN dept_emp de ON e.emp_no
= de.emp_no
LEFT JOIN departments d ON
  de.dept_no = d.dept_no
LEFT JOIN dept_manager dm ON
    e.emp_no = dm.emp_no
WHERE s.to_date > curdate() AND dm.to_date > curdate();

DESCRIBE salaries;

SELECT de.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees e
  LEFT JOIN dept_manager dm ON e.emp_no = dm.emp_no
  JOIN departments de ON dm.dept_no = de.dept_no
WHERE dm.to_date > curdate()
ORDER BY de.dept_name;


SELECT d.dept_name, mortals.first_name, mortals.last_name, mgmt.first_name
FROM employees mortals
JOIN dept_emp de ON mortals.emp_no = de.emp_no
  JOIN departments d ON de.dept_no = d.dept_no
  JOIN dept_manager manager ON d.dept_no = manager.dept_no
  JOIN employees mgmt ON manager.emp_no = mgmt.emp_no
WHERE de.to_date > curdate()
AND manager.to_date > curdate()
ORDER BY d.dept_name;