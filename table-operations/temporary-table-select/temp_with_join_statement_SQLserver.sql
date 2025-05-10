SELECT id, name, textbook, credits 
INTO #Inactive_courses 
FROM Course 
WHERE is_active = 'No'; 

SELECT * 
FROM #Inactive_courses 
JOIN Teaching ON #Inactive_courses.id = Teaching.course_id;
