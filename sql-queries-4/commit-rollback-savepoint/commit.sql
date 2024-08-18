START TRANSACTION; -- Start a transaction

/* Add some data to the Department table */
INSERT 
INTO Department 
VALUES(6,'Data Science','DS');
INSERT 
INTO Department 
VALUES(7,'Electrical Engineering','EE');

COMMIT; -- Commit the transaction
