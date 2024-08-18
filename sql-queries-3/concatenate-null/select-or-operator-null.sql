SELECT id, COALESCE(name, '') || ' (' || COALESCE(code, '') || ')' AS department_info FROM Department;

