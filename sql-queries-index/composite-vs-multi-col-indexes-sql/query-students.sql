SELECT * FROM Student WHERE gpa > 3 AND enrollment_date > (NOW() - INTERVAL 4 YEAR);

EXPLAIN ANALYZE SELECT * FROM Student WHERE gpa > 3 AND enrollment_date > (NOW() - INTERVAL 4 YEAR);
