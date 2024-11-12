START TRANSACTION; -- Start a new transaction

/* Add some data to the Department table */ 
INSERT 
INTO Department 
VALUES(6,'Data Science','DS');

CREATE TABLE t(i INTEGER); -- This statement causes an implicit commit
ROLLBACK; -- This statement has no effect
