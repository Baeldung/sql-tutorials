SELECT s.name,
       (SELECT COUNT(*)
        FROM Registration r
        WHERE r.student_id = s.id) AS course_count
FROM Student s
ORDER BY course_count DESC;