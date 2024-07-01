SELECT emp_dept.name, emp_dept.department_name, Salaries.salary 
FROM (SELECT Employees.name, Employees.employee_id, Departments.department_name 
    FROM Employees
    INNER JOIN Departments ON Employees.department_id = Departments.department_id) AS emp_dept 
INNER JOIN Salaries ON emp_dept.employee_id = Salaries.employee_id;