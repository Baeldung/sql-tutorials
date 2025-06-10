SELECT name, gpa AS grade_point_average 
FROM Student;

SELECT name, graduation_date - enrollment_date AS study_duration_in_days 
FROM Student;

-- ONLY in SQL Server since - operator not supported for date
SELECT name, DATEDIFF(DAY, enrollment_date, graduation_date) AS study_duration_in_days
FROM Student;

SELECT s.name,e.course_id,e.grade 
FROM Student AS s 
JOIN Exam AS e ON s.id = e.student_id 
WHERE e.grade IS NOT NULL;

SELECT s.name,s.gpa 
FROM Student AS s, (SELECT AVG(gpa) AS overall_avg_gpa FROM Student) AS avg_gpa_subquery 
WHERE s.gpa > avg_gpa_subquery.overall_avg_gpa;
