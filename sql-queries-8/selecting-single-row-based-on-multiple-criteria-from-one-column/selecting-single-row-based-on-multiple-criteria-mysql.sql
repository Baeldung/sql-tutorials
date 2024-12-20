SELECT * 
FROM Course 
WHERE textbook LIKE '%Numerical%' AND textbook LIKE '%Optimization%' 
ORDER BY id 
LIMIT 1;
