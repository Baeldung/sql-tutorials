SELECT * FROM Exam ORDER BY attendance_points+0;

SELECT * FROM Exam ORDER BY CONVERT(attendance_points, SIGNED);

SELECT * FROM Exam ORDER BY CAST(attendance_points AS SIGNED);