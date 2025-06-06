SELECT Course.id, Course.name, Course.credits, Course.is_active, Department.name, Department.code 
FROM Course JOIN Department
ON Course.department_id = Department.id;

SELECT Course.id, Course.name, Course.credits, Course.is_active, Department.name, Department.code
FROM Course JOIN Department
WHERE Course.department_id = Department.id;
