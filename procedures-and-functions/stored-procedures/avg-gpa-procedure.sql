DELIMITER //

CREATE PROCEDURE CalculateAvgGPA(
    IN dept_id INT,
    OUT avg_gpa FLOAT
)
BEGIN
    SELECT AVG(s.gpa) INTO avg_gpa
    FROM Student s
    JOIN Registration r ON s.id = r.student_id
    JOIN Course c ON r.course_id = c.id
    WHERE c.department_id = dept_id;
END //

DELIMITER ;

SET @dept_id = 1;
SET @result = 0;
CALL CalculateAvgGPA(@dept_id, @result);
SELECT @result AS average_gpa;
