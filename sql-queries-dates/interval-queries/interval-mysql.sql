SELECT id, name, enrollment_date FROM Student WHERE enrollment_date >= DATE_SUB(CURRENT_DATE, INTERVAL 10 DAY);
SELECT * FROM Registration WHERE reg_datetime >= DATE_SUB(NOW(), INTERVAL 10 DAY);
