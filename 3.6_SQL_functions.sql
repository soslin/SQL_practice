#Concatenate
SELECT CONCAT('Hello ', 'World', '!');

USE employees;

DESCRIBE employees;

# LIKE/NOT LIKE
SELECT first_name
FROM employees
WHERE first_name LIKE '%sat%';

SELECT DISTINCT first_name
FROM employees
WHERE first_name NOT LIKE '%a%';

# extract substring
SELECT SUBSTR('"Now is the winter of our discontent."', 4,19);

#case conversion
SELECT UPPER('asfasdfasdf'), LOWER('LASJL;FJASLFJ');

# replace
SELECT REPLACE('abcdefg', 'abc', 123);

# time and date functions
SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

SELECT CONCAT(
	'Teaching people to code for ', 
    UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'), ' seconds');

#Numerical functions
USE employees;

SELECT MIN(emp_no), MAX(emp_no) from employees;

# casting
SELECT 1 + '4',
'3' + 4,
CONCAT('Here is a number ', 123);


SELECT UPPER(CONCAT(first_name, last_name)) FROM employees
WHERE last_name LIKE 'e%e';

SELECT DATEDIFF(NOW(), hire_date)
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND 
birth_date LIKE '%12-25';

DESCRIBE salaries;

SELECT MIN(salary), MAX(salary)
FROM salaries;

SELECT LOWER(CONCAT(SUBSTR(first_name,1,4), SUBSTR(last_name, 1,4), '_',  
SUBSTR(birth_date,6,2), SUBSTR(birth_date,3,2)))
FROM employees
LIMIT 10;







