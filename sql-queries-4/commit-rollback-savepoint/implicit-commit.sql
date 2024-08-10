START TRANSACTION; -- Start a new transaction

/* Add some data to the Department table */ 
INSERT 
INTO Department 
VALUES(6,'Data Science','DS');

/* Delete the new data from the Department table */ 
DELETE 
FROM Department
WHERE id > 5;

CREATE TABLE t(i INTEGER); -- This statement causes an implicit commit
ROLLBACK; -- This statement has no effect
