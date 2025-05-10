SELECT * 
FROM ( 
	SELECT id, name, textbook, credits 
	FROM Course 
	WHERE is_active = 'No' 
) AS Temp_table 
JOIN Teaching ON Temp_table.id = Teaching.course_id;
