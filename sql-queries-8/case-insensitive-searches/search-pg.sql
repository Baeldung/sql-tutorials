SELECT id, name 
FROM Course 
WHERE name ILIKE '%operating system%';

SELECT id, name 
FROM Student 
WHERE name ~* 'OPERATING';
