-- Non-Sargable 
EXPLAIN 
SELECT * FROM Student
WHERE YEAR(birth_date) = 2001;

-- Sargable 
EXPLAIN 
SELECT * FROM Student
WHERE birth_date >= '2001-01-01' AND birth_date < '2002-01-01';