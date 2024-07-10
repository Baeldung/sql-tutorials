SELECT Faculty.name AS FacultyName, Department.name AS DepartmentName 
FROM Faculty 
INNER JOIN Department ON Faculty.department_id = Department.id;