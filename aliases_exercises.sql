USE employees;

# Exercise 3

SELECT CONCAT(last_name, ', ', first_name) AS 'full_name'
FROM employees
LIMIT 10;

# Exercise 4

SELECT CONCAT(last_name, ', ', first_name) AS 'full_name', CONCAT(birth_date) AS 'DOB'
FROM employees
LIMIT 10;

# Exercise 5

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS 'full_name', CONCAT(birth_date) AS 'DOB'
FROM employees
LIMIT 10;


# Using this file for the Indexes Assignment


