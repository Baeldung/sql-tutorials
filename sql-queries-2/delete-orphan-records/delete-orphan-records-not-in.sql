DELETE FROM Registration
WHERE student_id NOT IN (
    SELECT student_id
    FROM Students
);
