/*First Session*/
SET autocommit=0;

LOCK TABLES Department WRITE, 
Program READ;

INSERT INTO Department 
VALUES(6,'Data Science','DS');

COMMIT;

/*Second Session*/
USE University; 

/*First Session*/
UNLOCK TABLES;

/*Second Session*/
SELECT * FROM Department;
