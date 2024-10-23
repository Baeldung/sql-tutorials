-- Display first 10 records in the exam table
SELECT * FROM Exam LIMIT 10;

-- using CASE in SUM
SELECT COUNT(*) as total,
        SUM(CASE WHEN semester = 'FALL' THEN 1 ELSE 0 END) AS fall_count, 
        SUM(CASE WHEN semester = 'SPRING' THEN 1 ELSE 0 END) AS spring_count 
FROM Exam;