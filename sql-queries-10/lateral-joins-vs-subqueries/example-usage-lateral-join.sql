SELECT 
    f.id, 
    f.name, 
    t.course_id, 
    t.semester, 
    t.year
FROM 
    Faculty f
LEFT JOIN LATERAL (
    SELECT 
        te.course_id, 
        te.semester, 
        te.year
    FROM 
        Teaching te
    WHERE 
        te.faculty_id = f.id
    ORDER BY 
        te.year DESC, 
        CASE te.semester
            WHEN 'FALL' THEN 3
            WHEN 'SUMMER' THEN 2
            WHEN 'SPRING' THEN 1
            ELSE 0
        END DESC
    LIMIT 1
) t ON true;