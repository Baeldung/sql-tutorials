-- Understanding the Error

SELECT enrollment_date, name, AVG(gpa) AS average_gpa
FROM Student 
GROUP BY enrollment_date;


-- Remove the Unaggregated Column From the SELECT Clause

SELECT enrollment_date, AVG(gpa) AS average_gpa
FROM Student
GROUP BY enrollment_date;


-- Use an Aggregate Function

SELECT enrollment_date, MIN(name) AS example_student, AVG(gpa) AS average_gpa
FROM Student
GROUP BY enrollment_date;


-- Include the Column in the GROUP BY Clause

SELECT name, enrollment_date, AVG(gpa) AS avg_gpa
FROM Student
GROUP BY name, enrollment_date;


-- Use a Subquery or CTE
-- Subquery

SELECT s.*
FROM Student s
JOIN (
    SELECT enrollment_date, MAX(gpa) AS top_gpa
    FROM Student
    GROUP BY enrollment_date
) AS grouped
ON s.enrollment_date = grouped.enrollment_date
AND s.gpa = grouped.top_gpa;

-- CTE

WITH TopGPA AS (
    SELECT enrollment_date, MAX(gpa) AS top_gpa
    FROM Student
    GROUP BY enrollment_date
)
SELECT s.*
FROM Student s
JOIN TopGPA t
  ON s.enrollment_date = t.enrollment_date
 AND s.gpa = t.top_gpa;
 
 
 -- Use Window Functions for Aggregate Context Without GROUP BY
 
 SELECT
  id,
  name,
  enrollment_date,
  gpa,
  AVG(gpa) OVER (PARTITION BY enrollment_date) AS avg_gpa_for_enroll_date
FROM Student;


