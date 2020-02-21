USE employees;

SHOW TABLES;

DESCRIBE employees;

SELECT * 
from employees 
WHERE hire_date = '1985-01-01';

SELECT * FROM employees
WHERE first_name LIKE '%sus%';

SELECT * FROM employees
WHERE first_name LIKE 'sus%';

SELECT * FROM employees
WHERE emp_no BETWEEN 10000 AND 10250;

SELECT first_name, last_name FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, title FROM titles
WHERE to_date IS NOT NULL;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Baek')
	AND emp_no < 20000;

Select emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
	AND (
    last_name IN ('Herber', 'Baek')
    OR first_name = 'Shridhar');
    
 SELECT first_name, last_name
 FROM employees
 WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

DESCRIBE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31';

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%%%%-12-25';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name, last_name
 FROM employees
 WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT first_name, last_name
 FROM employees
 WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

SELECT first_name, last_name
 FROM employees
 WHERE last_name LIKE 'e%' or last_name LIKE '%e';

SELECT first_name, last_name
 FROM employees
 WHERE last_name LIKE 'e%e'; 

SELECT first_name, last_name, hire_date, birth_date
 FROM employees
 WHERE birth_date LIKE '%%%%-12-25' 
 AND 
 hire_date BETWEEN '1990-01-01' and '1999-12-31';

SELECT first_name, last_name
 FROM employees
 WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';





