-- Add a new column to the Student table 
ALTER TABLE Student ADD formatted_id VARCHAR(10); 
-- Update the new column with leading zeros 
UPDATE Student 
SET formatted_id = CASE 
	WHEN id < 1000 THEN '0' + CAST(id AS VARCHAR(7)) 
	ELSE CAST(id AS VARCHAR(10)) 
END; 
-- Update remaining rows where formatted_id is NULL 
UPDATE Student 
SET formatted_id = CAST(id AS VARCHAR(10)) 
WHERE formatted_id IS NULL;