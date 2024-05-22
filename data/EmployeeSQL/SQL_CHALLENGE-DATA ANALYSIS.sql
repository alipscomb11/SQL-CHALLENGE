-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT Employees. Emp_no, Employees. Last_name, Employees. First_name, Employees. Ex, Salaries.Salary
FROM Employees
JOIN Salaries ON Employees.Emp_no = Salaries.Emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT First_name, Last_name, Hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM Hire_date) = 1986;



-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT Departments.Dept_no, Departments.Dept_name, Employees.Emp_no, Employees.Last_name, Employees.First_name
FROM Departments
JOIN Dept_Manager ON Departments.Dept_no = Dept_Manager.Dept_no
JOIN Employees ON Dept_Manager.Emp_no = Employees.Emp_no;



-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT Employees.Emp_no, Employees.Last_name, Employees.First_name, Departments.Dept_no, Departments.Dept_name
FROM Employees
JOIN Dept_Emp ON Employees.Emp_no = Dept_Emp.Emp_no
JOIN Departments ON Dept_Emp.Dept_no = Departments.Dept_no;



-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT First_name, Last_name, Sex
FROM Employees
WHERE First_name = 'Hercules' AND Last_name LIKE 'B%';



-- List each employee in the Sales department, including their employee number, last name, and first name.

SELECT Employees.Emp_no, Employees.Last_name, Employees.First_name
FROM Employees
JOIN Dept_Emp ON Employees.Emp_no = Dept_Emp.Emp_no
JOIN Departments ON Dept_Emp.Dept_no = Departments.Dept_no
WHERE Departments.Dept_name = 'Sales';



- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT Employees.Emp_no, Employees.Last_name, Employees.First_name, Departments.Dept_name
FROM Employees
JOIN Dept_Emp ON Employees.Emp_no = Dept_Emp.Emp_no
JOIN Departments ON Dept_Emp.Dept_no = Departments.Dept_no
WHERE Departments.Dept_name IN ('Sales', 'Development');



-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT Last_name, COUNT(*) AS Frequency
FROM Employees
GROUP BY Last_name
ORDER BY Frequency DESC;







