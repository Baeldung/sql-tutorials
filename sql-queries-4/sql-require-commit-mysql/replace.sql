START TRANSACTION; -- Start transaction

/* Replace data */
REPLACE 
INTO Department 
VALUES (5, 'Math', 'MA');

COMMIT; -- Commit transaction
