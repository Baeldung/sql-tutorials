START TRANSACTION;

INSERT INTO Department 
VALUES(6,'Data Science','DS');

INSERT INTO Department 
VALUES(7,'Computer Engineering','CE');

UPDATE Department 
SET name = 'Math' 
WHERE id=5;

COMMIT;
