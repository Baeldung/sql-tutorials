SELECT id, name 
FROM Course 
WHERE REGEXP_LIKE(name, 'OPERATING', 'i');

SELECT id, name 
FROM Course 
WHERE name COLLATE utf8mb4_general_ci LIKE '%OPERATING%';