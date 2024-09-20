SELECT name
FROM student
WHERE id IN (
    SELECT student_id
    FROM registration
    WHERE course_id IN (
        SELECT course_id
        FROM teaching
        WHERE faculty_id = (
            SELECT id
            FROM faculty
            WHERE name = 'Rory Ross'
        )
    )
);
