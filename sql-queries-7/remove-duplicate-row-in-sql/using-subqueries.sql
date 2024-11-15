DELETE FROM Registration
WHERE id IN (
    SELECT id
    FROM (
        SELECT id,
            ROW_NUMBER() OVER (
                PARTITION BY semester, year, course_id, student_id
                ORDER BY id
            ) as rn
        FROM Registration
    ) t
    WHERE t.row_number > 1
);