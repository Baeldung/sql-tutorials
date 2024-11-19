DELIMITER //

CREATE PROCEDURE ProcessTempTable()
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE maxRow INT;

    -- Create a temporary table
    CREATE TEMPORARY TABLE TempStudent AS
    SELECT id, name FROM Student;

    -- Get the total number of rows in the temporary table
    SELECT COUNT(*) INTO maxRow FROM TempStudent;

    WHILE counter <= maxRow DO
        -- Process each row based on the counter value
        SELECT name FROM TempStudent LIMIT counter - 1, 1;

        -- Increment the counter
        SET counter = counter + 1;
    END WHILE;

    -- Drop the temporary table after processing
    DROP TEMPORARY TABLE TempStudent;
END //

DELIMITER ;
