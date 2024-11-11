SELECT 
	name, 
    formatted_id, 
    CAST(formatted_id AS INTEGER) AS cleaned_id 
FROM Student 
WHERE id in (1607,1007,2017,1010,1111,2008);