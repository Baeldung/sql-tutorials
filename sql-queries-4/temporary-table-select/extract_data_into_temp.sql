SELECT * 
FROM ( 
	SELECT id, name, textbook, credits 
	FROM Course 
	WHERE is_active = 'No' 
) 
AS Temp_table;
