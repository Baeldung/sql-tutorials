SELECT id, name, enrollment_date FROM Student WHERE enrollment_date >= CURRENT_DATE - INTERVAL '10 days';
SELECT * FROM Registration WHERE reg_datetime >= CURRENT_TIMESTAMP - INTERVAL '10 days';