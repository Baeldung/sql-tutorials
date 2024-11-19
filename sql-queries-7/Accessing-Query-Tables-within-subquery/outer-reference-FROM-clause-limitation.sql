SELECT s.name, c.course_count
FROM Student s
JOIN (
    SELECT student_id, COUNT(*) AS course_count
    FROM Registration
    WHERE student_id = s.id  
    GROUP BY student_id
) c ON s.id = c.student_id;