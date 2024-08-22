SET autocommit=0; --Turn  off Autocommit mode

/* Delete data in an implicit transaction */

DELETE 
FROM Department;

ROLLBACK;  --Roll back the implicit transaction
