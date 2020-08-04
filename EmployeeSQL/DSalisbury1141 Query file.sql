1. 
		SELECT employees.emp_no, employees.last_name, 
		employees.first_name, employees.sex, salaries.salary
		FROM employees
		INNER JOIN salaries ON
		employees.emp_no=salaries.emp_no;
		
2. 

		SELECT employees.first_name, employees.last_name, employees.hire_date 
		FROM employees
		WHERE hire_date >= '1/1/1986 00:00:00'::timestamp
		and hire_date < '12/31/1986 00:00:00'::timestamp
		
3.
		SELECT dept_manager.dept_no, departments.dept_name,employees.emp_no, 
		employees.last_name, employees.first_name,titles.title
		FROM dept_manager
		INNER JOIN departments ON
		departments.dept_no=dept_manager.dept_no
		INNER JOIN employees ON
		employees.emp_no=dept_manager.emp_no
		JOIN titles ON
		titles.title_id=employees.emp_title_id;



 4.
		SELECT employees.emp_no, employees.last_name, 
		employees.first_name,departments.dept_name
		FROM employees
		INNER JOIN dept_manager ON
		employees.emp_no=dept_manager.emp_no
		INNER JOIN departments ON
		dept_manager.dept_no=departments.dept_no;
		

5. 	
		SELECT first_name, last_name, sex 
		FROM employees
		WHERE first_name = 'Hercules'::name
		and last_name LIKE 'B%'
		
6. 
		
		SELECT employees.emp_no, employees.last_name, 
		employees.first_name, departments.dept_name
		FROM employees
		INNER JOIN dept_emp ON
		employees.emp_no=dept_emp.emp_no
		INNER JOIN departments ON
		dept_emp.dept_no=departments.dept_no
		WHERE dept_name = 'Sales':: name

7   

		SELECT employees.emp_no, employees.last_name, 
		employees.first_name, departments.dept_name
		FROM employees
		INNER JOIN dept_emp ON
		employees.emp_no=dept_emp.emp_no
		INNER JOIN departments ON
		dept_emp.dept_no=departments.dept_no
		WHERE dept_name = 'Sales'
		or dept_name LIKE 'Development'
		
8.
	
		SELECT last_name, COUNT(last_name) AS "name count"
		FROM employees
		GROUP BY last_name
		ORDER BY "name count" DESC;
		

