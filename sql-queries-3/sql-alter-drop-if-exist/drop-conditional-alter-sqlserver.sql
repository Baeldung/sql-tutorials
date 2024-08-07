CREATE PROCEDURE DropColumnIfExist AS 
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM INFORMATION_SCHEMA.COLUMNS 
        WHERE TABLE_SCHEMA = 'dbo' 
          AND TABLE_NAME = 'Student' 
          AND COLUMN_NAME = 'national_id'
    ) 
    BEGIN
        EXEC('ALTER TABLE dbo.Student DROP COLUMN national_id');
    END
END;

EXEC DropColumnIfExist;


SELECT * FROM Student;

