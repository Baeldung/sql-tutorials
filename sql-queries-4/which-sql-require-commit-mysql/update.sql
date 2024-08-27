START TRANSACTION; --Start transaction

/* Update data */
UPDATE Department 
SET code ='DSc' 
WHERE id=6;

COMMIT; --Commit transaction
