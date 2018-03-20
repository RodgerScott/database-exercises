USE employees;

#Exercise 2

Select DISTINCT title
FROM titles;

#Exercise 3

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

#Exercise 4

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name;

#Exercise 5

SELECT  last_name
FROM employees
WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%'
GROUP BY last_name;

#Exercise 6

SELECT  last_name, count(last_name)
FROM employees
WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

#Exercise 7
SELECT count(gender), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY count(gender) DESC;