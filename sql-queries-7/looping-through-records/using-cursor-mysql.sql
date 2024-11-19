DELIMITER //

CREATE PROCEDURE ProcessStudents()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE studentID INT;
    DECLARE studentName VARCHAR(100);
    
    -- Declare the cursor
    DECLARE studentCursor CURSOR FOR SELECT id, name FROM Student;
    
    -- Declare a handler for cursor termination
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    
    -- Open the cursor
    OPEN studentCursor;
    
    -- Fetch rows and loop through
    REPEAT
        FETCH studentCursor INTO studentID, studentName;
        
        IF NOT done THEN
            -- Process each row
            SELECT CONCAT('Processing Student: ', studentName);
        END IF;
        
    UNTIL done END REPEAT;

    -- Close the cursor
    CLOSE studentCursor;
END //

DELIMITER ;
