SELECT id, name 
FROM Student 
WHERE REGEXP_LIKE(name, 'PHIL', 'i');

SELECT id, name 
FROM Student 
WHERE name COLLATE utf8mb4_general_ci LIKE '%PHIL%';