--using a Common Table Expression
WITH RankedStudents AS (
    SELECT
    id, name, gpa,
    RANK() OVER (ORDER BY gpa DESC) AS r
FROM Student
WHERE gpa IS NOT NULL
)
SELECT id, name, gpa, r
FROM RankedStudents
WHERE r <= 3;

--using a subquery
SELECT *
FROM (
    SELECT 
        id, name, gpa, 
        RANK() OVER (ORDER BY gpa DESC) AS r
    FROM Student
    WHERE gpa IS NOT NULL
) AS RankedStudents
WHERE r <= 3;
