SELECT id, name, enrollment_date FROM Student WHERE enrollment_date >= DATEADD(DAY, -10, CONVERT(date, GETDATE()));
SELECT * FROM Registration WHERE reg_datetime >= DATEADD(DAY, -10, GETDATE());
SELECT * FROM Registration WHERE DATEDIFF(DAY, reg_datetime, GETDATE()) <= 10;