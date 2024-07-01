SELECT Employees.name, Departments.department_name, Salaries.salary 
FROM Employees 
INNER JOIN Departments ON Employees.department_id = Departments.department_id 
INNER JOIN Salaries ON Employees.employee_id = Salaries.employee_id;