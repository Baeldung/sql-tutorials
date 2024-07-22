SELECT c.*
FROM Course c
LEFT JOIN Registration r ON c.id = r.course_id
WHERE r.course_id IS NULL;
