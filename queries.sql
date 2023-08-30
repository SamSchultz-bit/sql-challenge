-- 1. 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
LEFT JOIN salaries as s
ON e.emp_no = s.emp_no; 

-- 2. 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'

-- 3. 
SELECT d.dept_name, m.dept_no, m.emp_no, e.last_name, e.first_name
FROM dept_manager AS m
LEFT JOIN employees AS e
ON m.emp_no = e.emp_no 
LEFT JOIN departments AS d
ON m.dept_no = d.dept_no

-- 4. 
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments AS d
ON d.dept_no = de.dept_no

-- 5. 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%'

-- 6. 
SELECT de.emp_no, e.last_name, e.first_name
FROM dept_emp AS de
LEFT JOIN employees AS e
ON e.emp_no = de.emp_no
WHERE dept_no=
(SELECT dept_no
FROM departments
WHERE dept_name = 'Sales')

-- 7. 
SELECT de.emp_no, e.last_name, e.first_name
FROM dept_emp AS de
LEFT JOIN employees AS e
ON e.emp_no = de.emp_no
LEFT JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_no=
(SELECT d.dept_no
FROM departments
WHERE dept_name = 'Sales')

-- 8.
SELECT last_name, COUNT(emp_no)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


