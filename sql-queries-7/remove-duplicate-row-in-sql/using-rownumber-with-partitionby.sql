SELECT id, semester, year, course_id, student_id,
    ROW_NUMBER() OVER (
        PARTITION BY semester, year, course_id, student_id
        ORDER BY id
    ) AS rn
FROM
    Registration;