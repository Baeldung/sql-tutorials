BEGIN TRANSACTION;
    DELETE FROM Exam WHERE student_id = 1001;
    DELETE FROM Registration WHERE student_id = 1001;
    DELETE FROM Student WHERE id = 1001;
COMMIT;