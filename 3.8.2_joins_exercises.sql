USE employees;
DESCRIBE employees;

#Write a query that shows each department along with the name of the current manager for that department.

SELECT departments.dept_name as Department, CONCAT(employees.first_name, ' ', employees.last_name)
FROM departments
JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER by departments.dept_name ASC;

# Find the name of all departments currently managed by women.
SELECT departments.dept_name as Department, CONCAT(employees.first_name, ' ', employees.last_name)
FROM departments
JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' 
AND employees.gender = 'F'
ORDER by departments.dept_name ASC;

# Find the current titles of employees currently working in the Customer Service department.

SELECT CONCAT(employees.first_name, ' ', employees.last_name), departments.dept_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Customer Service'
ORDER BY employees.last_name ASC;

# Find the current salary of all current managers.
SELECT departments.dept_name as Department, CONCAT(employees.first_name, ' ', employees.last_name), salaries.salary
FROM departments
JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
JOIN salaries
ON salaries.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01'
ORDER by salaries.salary DESC;

# Find the number of employees in each department.
SELECT departments.dept_name as Department, COUNT(employees.first_name)
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON employees.emp_no = dept_emp.emp_no
WHERE dept_emp.to_date = '9999-01-01'
GROUP BY departments.dept_name
ORDER BY COUNT(employees.first_name) DESC;

# Which department has the highest average salary?
SELECT departments.dept_name as Department, AVG(salaries.salary)
FROM departments
JOIN dept_emp
ON dept_emp.dept_no = departments.dept_no
JOIN salaries
ON dept_emp.emp_no = salaries.emp_no
WHERE salaries.to_date = '9999-01-01'
GROUP BY departments.dept_name
ORDER BY AVG(salaries.salary) DESC
LIMIT 1;

# Who is the highest paid employee in the Marketing department?
SELECT e.first_name,e.last_name
FROM departments as d
JOIN dept_emp AS de ON (d.dept_no=de.dept_no)
JOIN employees AS e ON (de.emp_no=e.emp_no)
JOIN salaries AS s ON (e.emp_no=s.emp_no)
WHERE de.to_date='9999-01-01' AND s.to_date='9999-01-01' AND d.dept_name='Marketing'
ORDER BY s.salary DESC
LIMIT 1;

# Which current department manager has the highest salary?
SELECT departments.dept_name as Department, CONCAT(employees.first_name, ' ', employees.last_name, salaries.salary)
FROM departments
JOIN dept_manager ON (dept_manager.dept_no = departments.dept_no)
JOIN employees ON (dept_manager.emp_no = employees.emp_no)
JOIN salaries ON (salaries.emp_no = employees.emp_no)
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01'
ORDER BY salaries.salary DESC
LIMIT 1;

















