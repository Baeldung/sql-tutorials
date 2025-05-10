SELECT id, name, info FROM Departments;

SELECT id, name, JSON_EXTRACT(info, '$.head') AS head FROM Departments;

SELECT id, name, info->'$.head' AS head FROM Departments;