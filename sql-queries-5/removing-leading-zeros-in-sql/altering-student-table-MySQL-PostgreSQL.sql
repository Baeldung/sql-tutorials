ALTER TABLE Student ADD COLUMN formatted_id VARCHAR(10);

UPDATE Student 
SET formatted_id = CONCAT('0', id) 
WHERE id <= 2000;

UPDATE Student 
SET formatted_id = id 
WHERE formatted_id IS NULL;
