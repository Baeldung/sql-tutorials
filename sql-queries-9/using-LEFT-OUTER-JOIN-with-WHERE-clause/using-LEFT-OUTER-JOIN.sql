SELECT Course.id, Course.name, Course.textbook, Department.code AS department_code
FROM Course
LEFT OUTER JOIN Department
ON Course.department_id = Department.id AND Department.id < 4;
