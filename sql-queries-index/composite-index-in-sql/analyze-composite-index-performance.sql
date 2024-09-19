--analyze query performance after assigning composite index
EXPLAIN SELECT * 
FROM Student 
WHERE enrollment_date = '2020-01-15' AND gpa > 4.0;

--optimized query
SELECT * 
FROM Student 
WHERE enrollment_date = '2020-01-15' AND gpa > 4.0;
