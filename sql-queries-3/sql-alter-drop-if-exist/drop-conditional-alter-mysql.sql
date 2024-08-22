DELIMITER //

CREATE PROCEDURE DropColumnIfExists()
BEGIN
    DECLARE column_exists INT DEFAULT 0;

    -- Check if the column exists
    SELECT COUNT(*) INTO column_exists 
    FROM information_schema.columns 
    WHERE table_schema = 'University' 
      AND table_name = 'Student' 
      AND column_name = 'national_id';

    -- If the column exists, drop it
    IF column_exists > 0 THEN
        ALTER TABLE Student DROP COLUMN national_id;
    END IF;
END //

DELIMITER ;


CALL DropColumnIfExists();


SELECT * FROM Student;
