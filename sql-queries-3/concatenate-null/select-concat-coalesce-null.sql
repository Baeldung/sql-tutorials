SELECT id, CONCAT(COALESCE(name, ''), ' (', COALESCE(code, 'NULL'), ')') AS department_info FROM Department;
