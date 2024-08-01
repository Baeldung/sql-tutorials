SELECT id, name 
FROM Course 
WHERE LOWER(name) NOT LIKE '%introduction%';