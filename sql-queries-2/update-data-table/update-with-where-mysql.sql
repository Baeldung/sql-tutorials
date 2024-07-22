UPDATE
department,
new_department
SET
department.name = new_department.name,
department.code = new_department.code
WHERE
department.id = new_department.id;