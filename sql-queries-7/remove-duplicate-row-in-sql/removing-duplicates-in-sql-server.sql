WITH COUNTED_DUPLICATES AS (
    SELECT id,
        ROW_NUMBER() OVER (
            PARTITION BY semester, year, course_id, student_id
            ORDER BY id
        ) AS row_number
    FROM Registration
)
DELETE FROM CTE
WHERE row_number > 1;