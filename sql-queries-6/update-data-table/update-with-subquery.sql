UPDATE department
SET name = (SELECT name FROM new_department WHERE new_department.id = department.id),
code = (SELECT code FROM new_department WHERE new_department.id = department.id)
WHERE department.id IN (SELECT id FROM new_department)