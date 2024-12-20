SELECT id, name 
FROM Course 
WHERE name ILIKE '%operating%';

SELECT id, name 
FROM Course 
WHERE name ~* 'OPERATING';
