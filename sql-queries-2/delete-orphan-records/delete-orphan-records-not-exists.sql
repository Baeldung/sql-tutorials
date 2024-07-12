DELETE FROM Student 
WHERE NOT EXISTS ( SELECT 1 FROM Department WHERE Department.id = Student.id);
