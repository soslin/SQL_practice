USE employees;

DESCRIBE employees;

SELECT first_name, last_name
FROM employees
ORDER BY last_name ASC, first_name DESC;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE birth_date LIKE '%%%%-12-25'
AND
hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY hire_date DESC;







