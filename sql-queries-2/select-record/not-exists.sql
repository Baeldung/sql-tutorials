SELECT c.* 
FROM Course c 
WHERE NOT EXISTS (
    SELECT 1 
    FROM Registration r 
    WHERE c.id = r.course_id
);
