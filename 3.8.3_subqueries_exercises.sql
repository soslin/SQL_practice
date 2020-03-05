USE employees;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
	SELECT emp_no
    FROM dept_manager
);

# Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date = (
	SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod

SELECT title, count(title)
FROM titles
WHERE emp_no IN (
	SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
)
GROUP BY title;

# How many people in the employees table are no longer working for the company?


SELECT COUNT(emp_no)
FROM employees
WHERE emp_no NOT IN (
	SELECT emp_no
    FROM dept_emp
    WHERE to_date = '9999-01-01');

