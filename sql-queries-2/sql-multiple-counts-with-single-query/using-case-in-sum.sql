-- Display first 10 records in the exam table
SELECT * FROM exam LIMIT 10;

-- using CASE in SUM
SELECT COUNT(*) as Total, 
        SUM(CASE WHEN semester = 'FALL' THEN 1 ELSE 0 END) AS FallCount, 
        SUM(CASE WHEN semester = 'SPRING' THEN 1 ELSE 0 END) AS SpringCount 
FROM Exam;