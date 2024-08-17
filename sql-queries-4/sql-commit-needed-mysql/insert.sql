START TRANSACTION; -- Start transaction

/* Add data */
INSERT 
INTO Department 
VALUES(6,'Data Science','DS');

INSERT 
INTO Department 
VALUES(7,'Computer Engineering','CE');

COMMIT; -- Commit transaction
