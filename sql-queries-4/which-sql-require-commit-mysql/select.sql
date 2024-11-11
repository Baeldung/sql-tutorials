//First user session
START TRANSACTION;
SELECT * 
FROM Department;

//Second user session
START TRANSACTION;
INSERT 
INTO Department 
VALUES(6,'Data Science','DS');

//First user session
SELECT * 
FROM Department;
-- Default data set returned

//Second user session
COMMIT;

//First user session
SELECT * 
FROM Department;
-- Default data set returned

//First user session
COMMIT;

//First user session
SELECT * 
FROM Department;
