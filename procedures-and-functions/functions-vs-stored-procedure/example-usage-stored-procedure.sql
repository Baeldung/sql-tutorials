CREATE OR REPLACE PROCEDURE UpdateGPA(student_id INT, new_gpa REAL)
LANGUAGE plpgsql AS $$
BEGIN
    UPDATE Student
    SET gpa = new_gpa
    WHERE id = student_id;

    RAISE NOTICE 'GPA updated for Student ID: %', student_id;
END;
$$;

SELECT * FROM student LIMIT 3;

CALL UpdateGPA(1001, 3.9);

SELECT id, name, gpa 
FROM Student 
WHERE id = 1001;