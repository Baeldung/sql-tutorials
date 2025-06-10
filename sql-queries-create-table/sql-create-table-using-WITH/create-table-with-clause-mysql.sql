CREATE TABLE gpa_new AS
WITH new_high_gpa 
AS 
(
    SELECT 
        id, 
        name, 
        enrollment_date, 
        gpa
    FROM student
    WHERE gpa > 3.5
)
SELECT *
FROM new_high_gpa;

SELECT * FROM gpa_new;