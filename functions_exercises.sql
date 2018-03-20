USE employees;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC , last_name ASC;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC , first_name ASC;

SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'm';

# Exercise 2
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no ASC;




SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date LIKE '199%-%-%';

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# Exercise 3
SELECT CONCAT(first_name, ' ', last_name, ' has been working here for ',
datediff(current_date, hire_Date), ' days.')
FROM employees
WHERE hire_date LIKE '199%-%-%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

# Exercise 3 with style
SELECT CONCAT(first_name, ' ', last_name, ' has been working here for ',
              YEAR(FROM_DAYS(datediff(current_date, hire_Date))), ' years, ',
              MONTH(FROM_DAYS(datediff(current_date, hire_Date))), ' months, ', 'and ',
              DAY(FROM_DAYS(datediff(current_date, hire_Date))),  ' days.')

FROM employees
WHERE hire_date LIKE '199%-%-%' AND birth_date LIKE '%-12-25'
ORDER BY hire_date ASC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';