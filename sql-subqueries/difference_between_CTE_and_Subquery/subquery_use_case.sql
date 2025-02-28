SELECT name
FROM student
WHERE id IN (
    SELECT student_id
    FROM registration
    WHERE course_id = (
        SELECT id
        FROM course
        WHERE name = 'Introduction to Structural Engineering'
    )
);

