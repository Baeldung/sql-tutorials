CREATE OR REPLACE PROCEDURE UpdateStudentGPA(
    IN student_id INT,
    IN new_gpa REAL
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Student
    SET gpa = new_gpa
    WHERE id = student_id;
END;
$$;

CALL UpdateStudentGPA(1001, 4.5);

SELECT id, name, gpa 
FROM Student 
WHERE id = 1001;