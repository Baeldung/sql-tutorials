SELECT 
    name,
    gpa,
    (gpa / (SELECT SUM(gpa) FROM Student)) * 100 AS gpa_percentage
FROM student;

SELECT
    name,
    gpa,
    ROUND(((gpa::numeric) / (SELECT SUM(gpa)::numeric FROM Student)) * 100.00, 2) AS gpa_percentage
FROM student;

SELECT 
    name, 
    gpa, 
    (CAST(gpa AS FLOAT) / (SELECT SUM(CAST(gpa AS FLOAT)) FROM Student)) * 100 AS gpa_percentage
FROM student;

SELECT 
    name, 
    gpa, 
    ROUND((CAST(gpa AS FLOAT) / (SELECT SUM(CAST(gpa AS FLOAT)) FROM Student)) * 100, 2) AS gpa_percentage
FROM student;
