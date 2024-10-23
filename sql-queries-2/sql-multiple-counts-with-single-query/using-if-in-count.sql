-- using if in count
SELECT COUNT(*) AS total, 
        COUNT(IF(semester='FALL', 1, NULL)) AS fall_count, 
        COUNT(IF(semester='SPRING', 1, NULL)) AS spring_count 
FROM Exam;