SELECT DISTINCT EXTRACT(YEAR FROM enrollment_date) AS enrollment_year 
FROM Student;

SELECT DISTINCT EXTRACT(YEAR FROM enrollment_date) AS enrollment_year, gpa 
FROM Student;