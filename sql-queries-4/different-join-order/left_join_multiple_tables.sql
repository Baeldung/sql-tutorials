SELECT t.id, c.id, f.id 
FROM Teaching t 
LEFT JOIN Course c ON t.course_id = c.id 
LEFT JOIN Faculty f ON t.faculty_id = f.id AND c.department_id = f.department_id;

SELECT t.id, c.id, f.id 
FROM Teaching t 
LEFT JOIN Faculty f ON t.course_id = f.id 
LEFT JOIN Course c ON t.course_id = c.id AND c.department_id = f.department_id;
