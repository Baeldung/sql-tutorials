SELECT 
    f.id, 
    f.name,
    (
        SELECT te.course_id
        FROM Teaching te
        WHERE te.faculty_id = f.id
        ORDER BY te.year DESC, 
            CASE te.semester
                WHEN 'Fall' THEN 3
                WHEN 'Summer' THEN 2
                WHEN 'Spring' THEN 1
                ELSE 0
            END DESC
        LIMIT 1
    ) AS latest_course_id
FROM Faculty f;