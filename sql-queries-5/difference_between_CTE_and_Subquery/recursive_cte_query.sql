WITH RECURSIVE prerequisite_chain AS (
    -- Anchor member: Start with the target course
    SELECT c.id, c.name, p.prerequisite_id
    FROM course c
    JOIN prerequisite p ON c.id = p.course_id
    WHERE c.name = 'Advanced Algorithms'
    
    UNION ALL
    
    -- Recursive member: Find all prerequisites for the courses in the current level
    SELECT c.id, c.name, p.prerequisite_id
    FROM course c
    JOIN prerequisite_chain pc ON c.id = pc.prerequisite_id
    JOIN prerequisite p ON c.id = p.course_id
)

SELECT DISTINCT name
FROM prerequisite_chain;

