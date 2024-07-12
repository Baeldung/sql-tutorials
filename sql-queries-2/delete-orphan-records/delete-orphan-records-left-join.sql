DELETE Student 
FROM Student 
LEFT JOIN Department ON Student.id = Department.id 
WHERE Department.id IS NULL;
