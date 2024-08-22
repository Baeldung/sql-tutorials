SET autocommit = 0; --Turn off the autocommit mode

/* Add data within an implicit transaction */
INSERT 
INTO Department 
VALUES(6,'Data Science','DS');

INSERT 
INTO Department 
VALUES(7,'Electrical Engineering','EE');

COMMIT; -- Commit the implicit transaction
