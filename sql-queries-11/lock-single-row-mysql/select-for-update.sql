// First Session
START TRANSACTION;
SELECT * 
FROM DEPARTMENT 
WHERE id = 5 
FOR UPDATE;

// Second Session
SELECT * 
FROM DEPARTMENT 
WHERE id = 5 
FOR SHARE;

// First Session
COMMIT;

// Second Session
START TRANSACTION;
UPDATE DEPARTMENT 
SET code = 'TEMP' 
WHERE id < 5 OR id > 5;

// First Session
COMMIT
// Second Session
COMMIT;

SELECT * 
FROM DEPARTMENT;

