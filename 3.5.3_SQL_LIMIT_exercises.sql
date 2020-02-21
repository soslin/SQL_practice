USE employees;

DESCRIBE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name like 'M%'
ORDER BY emp_no
LIMIT 10;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name like 'M%'
ORDER BY emp_no
LIMIT 25 OFFSET 50; #starts counting at record 51

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT last_name, first_name, hire_date, birth_date
FROM employees
WHERE birth_date LIKE '%%%%-12-25'
AND 
hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date, hire_date ASC
LIMIT 5 OFFSET 45;








