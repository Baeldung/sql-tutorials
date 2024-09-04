/*Each of these runs in a separate transaction*/
SELECT SELECT * FROM DEPARTMENT;
INSERT INTO Department VALUES(6,'Data Science','DS');
INSERT INTO Department VALUES(7,'Computer Engineering','CE');
UPDATE Department SET name = 'Math' WHERE id=5;

SELECT 1; --This statement doesn't run in a transaction
