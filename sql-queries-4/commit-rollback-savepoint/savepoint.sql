START TRANSACTION; -- Start a new transaction

 /* Add data to Department table */ 
INSERT 
INTO Department 
VALUES(6,'Data Science','DS');

SAVEPOINT sp1; -- Create a savepoint

 /* Delete a row of data from the Department table */ 
DELETE 
FROM Department 
WHERE id=6;

ROLLBACK TO SAVEPOINT sp1; -- Rollback transaction to the savepoint

RELEASE SAVEPOINT sp1; -- Release the savepoint
