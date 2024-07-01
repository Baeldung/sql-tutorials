MERGE INTO department
USING new_department
ON department.id = new_department.id
WHEN MATCHED THEN UPDATE
SET department.name = new_department.name,
department.code = new_department.code;