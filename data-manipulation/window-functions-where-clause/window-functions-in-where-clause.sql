--using a Common Table Expression
WITH RankedStudents AS (
    SELECT 
        id, name, national_id, birth_date, enrollment_date, graduation_date, gpa,
        RANK() OVER (ORDER BY gpa DESC) AS rank
    FROM student
)
SELECT id, name, national_id, gpa
FROM RankedStudents
WHERE rank = 1;

--using a subquery
SELECT *
FROM (
    SELECT 
        id, name, GPA, 
        RANK() OVER (ORDER BY GPA DESC) AS Rank
    FROM Student
) AS RankedStudents
WHERE Rank <= 3;
