SELECT id, name 
FROM Student 
WHERE name ILIKE '%phil%';

SELECT id, name 
FROM Student 
WHERE name ~* 'PHIL';
