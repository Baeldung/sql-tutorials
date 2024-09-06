START TRANSACTION; --Starts a single transaction

/* SQL Statements*/
SELECT SELECT * FROM DEPARTMENT;
INSERT INTO Department VALUES(6,'Data Science','DS');
INSERT INTO Department VALUES(7,'Computer Engineering','CE');
UPDATE Department SET name = 'Math' WHERE id=5;  

COMMIT; -- or ROLLBACK ends the single transaction
