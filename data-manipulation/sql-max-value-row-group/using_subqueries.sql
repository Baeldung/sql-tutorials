SELECT id, name, department, salary 
FROM Employees e1 
WHERE salary = ( 
	SELECT MAX(salary) 
	FROM Employees e2 
	WHERE e1.department = e2.department 
);
