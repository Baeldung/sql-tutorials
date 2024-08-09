START TRANSACTION; -- Start a new transaction

/* Delete all data from the Department table */ 
DELETE 
FROM Department;

CREATE TABLE t(i INTEGER); -- This statement causes an implicit commit
ROLLBACK; -- This statement has no effect
