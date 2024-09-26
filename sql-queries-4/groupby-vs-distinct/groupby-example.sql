SELECT EXTRACT(YEAR FROM enrollment_date) AS enrollment_year, COUNT(id) AS student_count 
FROM Student 
GROUP BY EXTRACT(YEAR FROM enrollment_date);

SELECT EXTRACT(YEAR FROM enrollment_date) AS enrollment_year, AVG(gpa) AS average_gpa 
FROM Student 
GROUP BY EXTRACT(YEAR FROM enrollment_date);