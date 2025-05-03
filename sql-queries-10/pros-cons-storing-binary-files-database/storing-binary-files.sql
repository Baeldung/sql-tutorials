-- STORING BINARY FILES
-- Modify textbook Column in Course Table to accept Binary Files
ALTER TABLE Course MODIFY textbook LONGBLOB;


-- INSERTING BINARY FILE INTO DATABASE
-- Checking secure directory MySQL access
SHOW VARIABLES LIKE 'secure_file_priv';

-- INSERT SQL-Fundamental.pdf
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) 
VALUES ('ME438', 'SQL-Fundamental', 
    (SELECT TO_BASE64(LOAD_FILE('/var/lib/mysql-files/SQL-Fundamental.pdf'))), 7, 'Yes', 4);


-- Retrieving Binary File
SELECT FROM_BASE64(textbook) 
INTO DUMPFILE '/var/lib/mysql-files/LinuxCourse_restored.pdf' 
FROM Course 
WHERE id = 'CS108';

