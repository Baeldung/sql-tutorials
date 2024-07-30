START TRANSACTION; -- Start a new transaction

 /* Add data to Department table */ 
INSERT 
INTO Department 
VALUES(6,'Data Science','DS');
INSERT 
INTO Department 
VALUES(7,'Electrical Engineering','EE');

SAVEPOINT sp1; -- Create a savepoint

 /* Delete data from Department table */ 
DELETE 
FROM Department 
WHERE id=7;
INSERT 
INTO Department 
VALUES(8,'Computer Engineering','CE');

ROLLBACK TO SAVEPOINT sp1; -- Roll back transaction to a savepoint

RELEASE SAVEPOINT sp1; -- Release a savepoint
