SELECT name, graduation_date, AVG(gpa) AS average_gpa 
FROM Student 
GROUP BY name, graduation_date 
HAVING AVG(gpa) > 4.0;
