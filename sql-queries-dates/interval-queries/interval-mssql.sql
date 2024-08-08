SELECT id, name, enrollment_date, created_at FROM Student WHERE enrollment_date >= DATEADD(DAY, -10, CONVERT(date, GETDATE()));
SELECT id, name, enrollment_date, created_at FROM Student WHERE created_at >= DATEADD(DAY, -10, GETDATE());
SELECT id, name, enrollment_date, created_at FROM Student WHERE DATEDIFF(DAY, created_at, GETDATE()) <= 10;