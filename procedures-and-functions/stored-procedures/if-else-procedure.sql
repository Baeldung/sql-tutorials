DELIMITER //

CREATE PROCEDURE AssignLetterGrade(
    IN numeric_grade FLOAT,
    OUT letter_grade CHAR(2)
)
BEGIN
    IF numeric_grade >= 90 THEN
        SET letter_grade = 'A';
    ELSEIF numeric_grade >= 80 THEN
        SET letter_grade = 'B';
    ELSEIF numeric_grade >= 70 THEN
        SET letter_grade = 'C';
    ELSEIF numeric_grade >= 60 THEN
        SET letter_grade = 'D';
    ELSE
        SET letter_grade = 'F';
    END IF;
END //

DELIMITER ;

SET @input_grade = 85;
SET @output_grade = '';
CALL AssignLetterGrade(@input_grade, @output_grade);
SELECT @output_grade;