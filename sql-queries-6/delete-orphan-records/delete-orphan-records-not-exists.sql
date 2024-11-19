DELETE FROM Registration
WHERE NOT EXISTS (
    SELECT 1
    FROM Students
    WHERE Students.student_id = Registration.student_id
);
