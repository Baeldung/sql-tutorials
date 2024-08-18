DELETE FROM Registration
WHERE student_id IN (
    SELECT Registration.student_id
    FROM Registration
    LEFT JOIN Students ON Registration.student_id = Students.student_id
    WHERE Students.student_id IS NULL
);
