DELETE s 
FROM Student AS s 
INNER JOIN Department AS d ON s.id = d.id 
WHERE d.name = 'Geology';
