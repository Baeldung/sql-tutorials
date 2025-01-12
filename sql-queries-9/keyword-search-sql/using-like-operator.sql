SELECT id, name, textbook, credits 
FROM Course 
WHERE name LIKE '%Operating%';

SELECT id, name, textbook, credits 
FROM Course 
WHERE name LIKE '%Database Systems%' OR textbook LIKE '%Database Systems%';