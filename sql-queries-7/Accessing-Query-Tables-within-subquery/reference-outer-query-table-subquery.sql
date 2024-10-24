SELECT s.name, s.gpa
FROM Student s
WHERE EXISTS (
    SELECT 1
    FROM Registration r
    WHERE r.student_id = s.id
    AND r.semester = 'SPRING'
    AND r.year = 2023
);