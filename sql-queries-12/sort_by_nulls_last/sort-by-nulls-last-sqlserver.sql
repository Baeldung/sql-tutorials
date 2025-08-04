SELECT * FROM Student
ORDER BY
    CASE WHEN graduation_date IS NULL THEN 1 ELSE 0 END,
    graduation_date ASC;