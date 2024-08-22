SET autocommit = 0; --Turn off Autocommit mode

/* Add data within an implicit transaction */

INSERT 
INTO Department 
VALUES(6,'Data Science','DS');

SET autocommit = 1; -- Turn on Autocommit mode
