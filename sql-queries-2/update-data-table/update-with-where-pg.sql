UPDATE department dept
SET name = new_dept.name,
code = new_dept.code
FROM new_department new_dept
WHERE new_dept.id = dept.id;