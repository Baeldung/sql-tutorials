SELECT * 
FROM Course 
WHERE textbook LIKE '%Numerical%' OR textbook LIKE '%Optimization%'
ORDER BY id
LIMIT 1;

-- Using regular expressions as another alternative
SELECT * 
FROM Course 
WHERE textbook ~* 'Numerical|Optimization' 
ORDER BY id 
LIMIT 1;
