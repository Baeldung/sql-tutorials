UPDATE department
SET department.name = new_department.name,
department.code = new_department.code
FROM department
INNER JOIN new_department
ON department.id = new_department.id;