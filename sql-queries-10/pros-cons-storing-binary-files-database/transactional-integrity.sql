-- Start the transaction
START TRANSACTION; 

-- Insert the pdf binary file into Course Table - textbook column
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) 
VALUES ('ME439', 'SQL-Fundamental-2', (SELECT TO_BASE64(LOAD_FILE('/var/lib/mysql-files/LinuxCourse_restored.pdf'))), 10, 'No', 4); 

--  Update Department Table
UPDATE Department 
SET course_count = course_count + 1 
WHERE id = 4; 

--  Commit to complete the transaction
COMMIT;