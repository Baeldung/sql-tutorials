SELECT t.name AS table_name 
FROM sys.tables t 
JOIN sys.columns c ON t.object_id = c.object_id 
WHERE c.name = 'department_id';

SELECT OBJECT_NAME(object_id) AS table_name 
FROM sys.columns 
WHERE name = 'department_id';