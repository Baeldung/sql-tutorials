--analyze query performance on column without composite index assigned, using EXPLAIN
EXPLAIN SELECT * 
FROM Student 
WHERE birth_date = '2002-05-15' AND gpa > 3.5;
