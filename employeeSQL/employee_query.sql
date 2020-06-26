--Question 1

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees

INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--Question 2

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

--Question 3

SELECT * FROM departments;
SELECT * FROM dept_managers;
SELECT * FROM employees;

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d
LEFT JOIN dept_managers dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees e
on dm.emp_no = e.emp_no;

--Question 4

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN employees e
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no;

--Question 5

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question 6

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN employees e
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

--Question 7

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN employees e
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales'

UNION

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN employees e
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Development';

--Question 8

SELECT last_name, COUNT(emp_no) AS "Total Employees by Last Name"
FROM employees
GROUP BY last_name
ORDER BY COUNT(emp_no) DESC;
