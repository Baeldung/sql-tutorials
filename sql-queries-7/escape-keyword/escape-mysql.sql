-- Create new column with reserved keyword as name
ALTER TABLE Course add COLUMN `group` VARCHAR(15);

-- setup some data
UPDATE Course SET `group` = 'beginner' WHERE department_id = 1 AND credits = 5;
UPDATE Course SET `group` = 'intermediate' WHERE department_id = 4 AND credits = 5;
UPDATE Course SET `group` = 'advanced' WHERE credits = 7;
UPDATE Course SET `group` = 'beginner' WHERE `group` IS NULL;

-- queries
SELECT DISTINCT `group` FROM Course;

-- reset table
ALTER TABLE Course DROP COLUMN `group`;