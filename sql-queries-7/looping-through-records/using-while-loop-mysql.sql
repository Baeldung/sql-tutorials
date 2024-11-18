DELIMITER //

CREATE PROCEDURE ProcessStudents()
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE maxID INT;
    
    -- Get the maximum id from the Student table
    SELECT MAX(id) INTO maxID FROM Student;
    
    WHILE counter <= maxID DO
        -- Process each row based on the counter value
        SELECT name FROM Student WHERE id = counter;
        
        -- Increment the counter
        SET counter = counter + 1;
    END WHILE;
END //

DELIMITER ;

