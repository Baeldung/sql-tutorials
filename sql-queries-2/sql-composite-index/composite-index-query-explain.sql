-- EXPLAIN for a multi-column query
EXPLAIN  
SELECT * 
FROM Empl 
WHERE dept = 1 AND age < 30 AND lname = 'Smith';
