SELECT Course.name, Department.name
FROM Course
LEFT JOIN Department 
ON Course.department_id = Department.id;
