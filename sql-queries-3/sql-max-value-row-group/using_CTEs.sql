WITH MaxSalaries AS ( 
	SELECT department, MAX(salary) AS max_salary 
	FROM Employees 
	GROUP BY department
 ) 
SELECT e.id, e.name, e.department, e.salary 
FROM Employees e 
JOIN MaxSalaries ms ON e.department = ms.department AND e.salary = ms.max_salary;
