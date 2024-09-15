SELECT name, 
       gpa, 
       (SELECT AVG(gpa) FROM Student) AS avg_gpa,
       gpa - (SELECT AVG(gpa) FROM Student) AS gpa_difference
FROM Student
WHERE gpa IS NOT NULL;