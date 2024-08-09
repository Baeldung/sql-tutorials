START TRANSACTION; -- Start a transaction

/* Delete Data from  Department */
DELETE 
FROM Department;

ROLLBACK; -- Rollback the transaction
