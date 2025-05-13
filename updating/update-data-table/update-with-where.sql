UPDATE department
SET department.name = new_department.name,
department.code = new_department.code
FROM department, new_department
WHERE department.id = new_department.id