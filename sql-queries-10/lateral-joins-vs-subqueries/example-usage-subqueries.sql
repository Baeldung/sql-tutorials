SELECT 
    f.id, 
    f.name,
    (
        SELECT te.course_id
        FROM Teaching te
        WHERE te.faculty_id = f.id
        ORDER BY te.year DESC, 
            CASE te.semester
                WHEN 'FALL' THEN 3
                WHEN 'SUMMER' THEN 2
                WHEN 'SPRING' THEN 1
                ELSE 0
            END DESC
        LIMIT 1
    ) AS latest_course_id
FROM Faculty f;