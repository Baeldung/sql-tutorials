-- using if in count
SELECT COUNT(*) AS Total, 
        COUNT(IF(semester='FALL', 1, NULL)) AS FallCount, 
        COUNT(IF(semester='SPRING',1,NULL)) AS SpringCount 
FROM Exam;