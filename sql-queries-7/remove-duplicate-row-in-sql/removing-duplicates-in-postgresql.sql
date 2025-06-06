DELETE FROM Registration
USING (
    SELECT id
    FROM (
        SELECT id,
            ROW_NUMBER() OVER (
                PARTITION BY semester, year, course_id, student_id
                ORDER BY id
            ) as rn
        FROM Registration
    ) t
    WHERE t.rn > 1
) duplicate
WHERE Registration.id = duplicate.id;