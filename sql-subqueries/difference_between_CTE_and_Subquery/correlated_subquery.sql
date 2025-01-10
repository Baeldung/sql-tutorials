SELECT name
FROM student s
WHERE (
    SELECT COUNT(*)
    FROM registration r
    WHERE r.student_id = s.id
) = (
    SELECT MAX(course_count)
    FROM (
        SELECT COUNT(*) AS course_count
        FROM registration
        GROUP BY student_id
    ) AS subquery
);
