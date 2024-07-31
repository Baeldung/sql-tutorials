START TRANSACTION; -- Start a transaction

/* Delete Data from  Prerequisite */
DELETE 
FROM Prerequisite;

ROLLBACK; -- Rollback the transaction
