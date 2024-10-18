WITH RankedStudents AS (
    SELECT id, name, gpa,
           ROW_NUMBER() OVER (ORDER BY gpa ASC) AS row_num
    FROM Student
)
SELECT id, name, gpa
FROM RankedStudents
WHERE row_num <= 5;