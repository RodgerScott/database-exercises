USE employees;


# 1 Find all the employees with the same hire
# date as employee 101010 using a sub-query.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = '101010'
);

# 2 Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

SELECT first_name, last_name, title
FROM employees as e
JOIN titles t
ON e.emp_no = t.emp_no
WHERE first_name IN (
  SELECT first_name
  FROM employees
  WHERE first_name = 'Aamod'
);

#3 Find all the current department managers that are female.

SELECT DISTINCT first_name, last_name
FROM employees e
JOIN dept_manager de
ON e.emp_no = de.emp_no
JOIN titles t
ON e.emp_no = t.emp_no
WHERE gender IN (
  SELECT gender
  FROM employees e2
    JOIN dept_manager de2
    ON e2.emp_no = de2.emp_no
  WHERE gender = 'f' AND de.to_date > curdate() AND t.title = 'manager'
);

