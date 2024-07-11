DELETE Student 
FROM Student 
INNER JOIN Department ON Student.id = Department.id 
WHERE Department.name = 'Geology';
