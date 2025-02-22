SELECT Course.id, Course.name, Course.textbook, Department.code AS department_code 
FROM Course 
LEFT OUTER JOIN Department ON Course.department_id = Department.id
WHERE Department.id < 4;

SELECT Course.id, Course.name, Course.textbook, Department.code AS department_code
FROM Course
LEFT OUTER JOIN Department ON Course.department_id = Department.id
WHERE Department.id < 4 OR Course.department_id IS NULL;
