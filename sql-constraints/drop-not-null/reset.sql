-- PostgreSQL
ALTER TABLE student 
ALTER COLUMN national_id 
SET NOT NULL;

-- MySQL
ALTER TABLE student 
MODIFY COLUMN national_id BIGINT NOT NULL;

-- SQL Server
ALTER TABLE student  
ALTER COLUMN national_id BIGINT NOT NULL;
