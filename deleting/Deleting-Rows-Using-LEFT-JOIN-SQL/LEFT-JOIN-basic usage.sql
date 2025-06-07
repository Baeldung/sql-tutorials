SELECT 
    s.id AS student_id, 
    s.name AS student_name, 
    r.course_id 
FROM student s 
LEFT JOIN registration r ON s.id = r.student_id;