--using a Common Table Expression
WITH RankedStudents AS (
    SELECT id, name, national_id, birth_date, enrollment_date, graduation_date, gpa, 
    RANK() OVER (ORDER BY national_id ASC) AS r FROM Student ) 
SELECT id, name, national_id, r 
FROM RankedStudents 
WHERE r <= 3;

--using a subquery
SELECT id, name, national_id, r 
    FROM ( SELECT id, name, national_id, birth_date, enrollment_date, graduation_date, gpa, 
    RANK() OVER (ORDER BY national_id ASC) AS r
    FROM Student 
) AS RankedStudents
WHERE r <= 3;
