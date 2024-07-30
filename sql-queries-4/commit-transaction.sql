START TRANSACTION; -- Start a transaction

/* Add some data to the Department table */
INSERT 
INTO Department 
VALUES(6,'Data Science','DS');
INSERT 
INTO Department 
VALUES(7,'Electrical Engineering','EE');
INSERT 
INTO Department 
VALUES(8,'Computer Engineering','CE');
INSERT 
INTO Department 
VALUES(9,'Information Science','IS');
INSERT 
INTO Department 
VALUES(10,'Statistics','S');

COMMIT; -- Commit the transaction
