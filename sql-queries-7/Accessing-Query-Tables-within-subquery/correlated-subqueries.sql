SELECT c.id, 
       c.name,
       (SELECT COUNT(DISTINCT r.student_id)
        FROM Registration r
        WHERE r.course_id = c.id) AS enrolled_students
FROM Course c
WHERE c.credits > 5;