MERGE INTO department AS dept
USING new_department AS new_dept
ON dept.id = new_dept.id
WHEN MATCHED THEN UPDATE
SET name = new_dept.name,
code = new_dept.code
WHEN NOT MATCHED THEN
INSERT (id, name, code)
VALUES (new_dept.id, new_dept.name, new_dept.code);