-- A multi-column query that doesn't use composite index
EXPLAIN 
SELECT * 
FROM Empl 
WHERE  age = 25 AND lname = 'abbot';
