SELECT * 
FROM Student 
WHERE id NOT IN (SELECT id FROM Department);
