DELIMITER //

CREATE PROCEDURE BatchDelete()
BEGIN
    DECLARE rows_affected INT DEFAULT 1;
    DECLARE batch_size INT DEFAULT 1000;
    
    WHILE rows_affected > 0 DO
        DELETE FROM Registration 
        WHERE year < 2022 
        LIMIT batch_size;
        
        SET rows_affected = ROW_COUNT();
    END WHILE;
END //

DELIMITER ;

CALL BatchDelete();

DROP PROCEDURE BatchDelete;
