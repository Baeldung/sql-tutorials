DELIMITER //

CREATE PROCEDURE IncrementAndReturn (
    INOUT value INT
)
BEGIN
    SET value = value + 1;
END //

DELIMITER ;

SET @my_value = 5;
CALL IncrementAndReturn(@my_value);
SELECT @my_value;