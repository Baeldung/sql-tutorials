-- SQL query with search condition spanning multiple columns
SELECT * 
FROM Empl 
WHERE dept = 1 AND age < 30 AND lname = 'Smith';
