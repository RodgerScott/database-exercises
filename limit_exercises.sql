USE employees;

# Exercise 2

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'Z%' ORDER BY last_name DESC
LIMIT 10;

# Exercise 3

SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date LIKE '199%-%-%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

# Exercise 3

SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date LIKE '199%-%-%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;