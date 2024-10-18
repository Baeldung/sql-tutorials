SET autocommit=0; -- Turn off autocommit mode

/* Show variable value */

SHOW VARIABLES 
LIKE 'autocommit';

/* Start an implicit transaction with a simple query */
SELECT *
FROM Department;
