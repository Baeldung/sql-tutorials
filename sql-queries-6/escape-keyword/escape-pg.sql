-- Create new column with reserved keyword as name
ALTER TABLE course add COLUMN "group" VARCHAR(15);

-- setup some data
UPDATE course SET "group" = 'beginner' WHERE department_id = 1 AND credits = 5;
UPDATE course SET "group" = 'intermediate' WHERE department_id = 4 AND credits = 5;
UPDATE course SET "group" = 'advanced' WHERE credits = 7;
UPDATE course SET "group" = 'beginner' WHERE "group" IS NULL;

-- queries
SELECT DISTINCT "group" FROM course;

-- reset table
ALTER TABLE course DROP COLUMN "group";