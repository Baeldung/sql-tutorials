UPDATE Departments 
SET info = JSON_SET(info, '$.head', 'Dr. Parker') 
WHERE id = 1;
SELECT id, name, info FROM Departments WHERE id = 1;

UPDATE Departments 
SET info = JSON_REPLACE(info, '$.location', 'Building 2A')
WHERE id = 2;
SELECT id, name, info FROM Departments WHERE id = 2;

UPDATE Departments 
SET info = JSON_REPLACE(info, '$.dean', 'Dr. Brown') 
WHERE id = 2;
SELECT id, name, info FROM Departments WHERE id = 2;

UPDATE Departments 
SET info = JSON_SET(info, '$.dean', 'Dr. Brown') 
WHERE id = 2;
SELECT id, name, info FROM Departments WHERE id = 2;

UPDATE Departments 
SET info = JSON_REMOVE(info, '$.courses')
WHERE id = 3;
SELECT id, name, info FROM Departments WHERE id = 3;

UPDATE Departments
SET info = JSON_ARRAY_APPEND(info, '$.courses', 'Artificial Intelligence') 
WHERE id = 4;
SELECT id, name, info FROM Departments WHERE id = 4;