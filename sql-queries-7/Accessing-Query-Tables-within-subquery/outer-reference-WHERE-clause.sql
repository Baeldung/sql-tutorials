SELECT c.id, c.name
FROM Course c
WHERE EXISTS (
    SELECT 1
    FROM Registration r
    WHERE r.course_id = c.id
    AND r.semester = 'SPRING'
);