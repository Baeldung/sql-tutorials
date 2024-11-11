SELECT 
	name, 
    formatted_id, 
    formatted_id::INTEGER AS cleaned_id 
FROM Student 
WHERE id IN (1607,1007,2017,1010,1111,2008);