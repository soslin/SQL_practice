USE employees;

SELECT first_name, Count(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

SELECT last_name, first_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT LOWER(CONCAT(SUBSTR(first_name,1,4), SUBSTR(last_name, 1,4), '_',  
SUBSTR(birth_date,6,2), SUBSTR(birth_date,3,2))), COUNT(*)
FROM employees
GROUP BY LOWER(CONCAT(SUBSTR(first_name,1,4), SUBSTR(last_name, 1,4), '_',  
SUBSTR(birth_date,6,2), SUBSTR(birth_date,3,2)))
ORDER BY COUNT(*) DESC;
