DELIMITER $$

-- Create a procedure to insert 100,000 records
CREATE PROCEDURE ainsert_students()
BEGIN
    DECLARE i INT DEFAULT 3000;

    WHILE i <= 100000 DO
        INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
        VALUES (
            i,
            CONCAT('Student', i),
            FLOOR(RAND() * 10000000000),   -- Generate a random 10-digit national ID
            DATE_ADD('1990-01-01', INTERVAL FLOOR(RAND() * 10000) DAY), -- Random birth date within ~30 years
            DATE_ADD('2010-01-01', INTERVAL FLOOR(RAND() * 3650) DAY),  -- Random enrollment date within ~10 years
            DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND() * 3650) DAY),  -- Random graduation date within ~10 years
            ROUND(RAND() * 4, 2)              -- Random GPA between 0.0 and 4.0
        );

        SET i = i + 1;
END WHILE;
END$$

DELIMITER ;

-- Call the procedure to insert the data
CALL insert_students();
