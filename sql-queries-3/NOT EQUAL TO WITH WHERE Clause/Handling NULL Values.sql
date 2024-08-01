SELECT id, name, gpa 
FROM Student 
WHERE gpa IS NOT NULL 
	AND gpa <> 4.0;