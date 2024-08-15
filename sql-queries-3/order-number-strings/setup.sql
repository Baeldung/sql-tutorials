ALTER TABLE Exam ADD attendance_points VARCHAR(10);
DELETE FROM Exam WHERE id > 4;
UPDATE Exam SET attendance_points = '100' WHERE id=1;
UPDATE Exam SET attendance_points = '-25' WHERE id=2;
UPDATE Exam SET attendance_points = '45' WHERE id=3;
UPDATE Exam SET attendance_points = '-99' WHERE id=4;

SELECT id, attendance_points FROM Exam; 