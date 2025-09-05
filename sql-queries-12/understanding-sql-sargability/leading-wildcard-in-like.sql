-- Non-sargable
EXPLAIN 
SELECT * FROM Student 
WHERE name LIKE '%Po';

-- Sargable
EXPLAIN 
SELECT * FROM Student 
WHERE name LIKE 'Po%';