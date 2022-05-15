-- Question 1: List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees as e
INNER JOIN Salaries as s
ON e.emp_no = s.emp_no

-- Question 2: List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM Employees as e
WHERE extract(YEAR from hire_date) = 1986

-- Question 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name
FROM Dept_Manager as de
INNER JOIN Departments as d
ON de.dept_no = d.dept_no
INNER JOIN Employees as e
ON de.emp_no = e.emp_no

-- Question 4: List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees as e
INNER JOIN Dept_Emp as de
ON e.emp_no = de.emp_no
INNER JOIN Departments as d
ON de.dept_no = d.dept_no

-- Question 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules'
    AND last_name LIKE 'B%'

-- Question 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees as e
INNER JOIN Dept_Emp as de
ON e.emp_no = de.emp_no
INNER JOIN Departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

-- Question 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees as e
INNER JOIN Dept_Emp as de
ON e.emp_no = de.emp_no
INNER JOIN Departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
    OR d.dept_name = 'Development'

-- Question 8: List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(last_name) as "Last Name Count"
FROM Employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC