SELECT id, name, enrollment_date, created_at FROM Student WHERE enrollment_date >= DATE_SUB(CURRENT_DATE, INTERVAL 10 DAY);
SELECT id, name, enrollment_date, created_at FROM Student WHERE created_at >= DATE_SUB(NOW(), INTERVAL 10 DAY);
