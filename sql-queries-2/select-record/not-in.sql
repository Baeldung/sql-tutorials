SELECT c.id, c.name, c.textbook, c.credits, c.is_active, c.department_id
FROM Course c
WHERE c.id NOT IN (
    SELECT r.course_id 
    FROM Registration r
);
