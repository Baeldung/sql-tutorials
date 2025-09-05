-- non-sargable 
EXPLAIN 
SELECT * FROM Student
WHERE national_id = 123345566 OR name = 'John Liu';

-- Sargable
EXPLAIN 
SELECT * FROM Student WHERE national_id = 123345566 
UNION 
SELECT * FROM Student WHERE name='John Liu';