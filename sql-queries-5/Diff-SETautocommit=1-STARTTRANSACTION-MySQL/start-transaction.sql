START TRANSACTION; --Starts a transaction

/* SQL Statements run in transaction
SELECT SELECT * FROM DEPARTMENT;
INSERT INTO Department VALUES(6,'Data Science','DS');
INSERT INTO Department VALUES(7,'Computer Engineering','CE');
UPDATE Department SET name = 'Math' WHERE id=5; */

COMMIT; -- or ROLLBACK; to commit or rollback transaction
