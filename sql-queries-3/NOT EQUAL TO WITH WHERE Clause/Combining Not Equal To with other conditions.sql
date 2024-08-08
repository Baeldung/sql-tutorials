SELECT id, name, credits, department_id 
FROM Course 
WHERE department_id <> 1 
	AND is_active = 'Yes' 
    AND credits > 5;