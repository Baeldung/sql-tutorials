SELECT name FROM Student WHERE 1=0;

SELECT * FROM Student WHERE 1=0;

DELETE FROM Student WHERE id > 100 AND 1 = 0;

SELECT * FROM Student WHERE 1 = 0 
-- Dynamic conditions 
OR GPA < 2 
OR GPA IS NULL;