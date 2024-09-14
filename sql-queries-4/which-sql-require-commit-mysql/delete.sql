START TRANSACTION; --Start transaction

/* Delete data*/
DELETE 
FROM Department 
WHERE id=4 OR id=5;

COMMIT; --Commit transaction
