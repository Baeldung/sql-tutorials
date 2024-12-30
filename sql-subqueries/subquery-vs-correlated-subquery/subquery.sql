SELECT s.name AS student_name, s.gpa 
FROM Student s 
WHERE s.id IN 
            (SELECT r.student_id 
            FROM Registration r 
            INNER JOIN Course c ON r.course_id = c.id 
            WHERE c.department_id = 
                                    (SELECT id 
                                    FROM Department 
                                    WHERE name = 'Mathematics'));