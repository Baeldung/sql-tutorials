-- using subqueries for multiple counts
SELECT COUNT(*) AS TotalCount, 
        (SELECT COUNT(*) FROM exam WHERE semester = 'FALL') AS FallCount, 
        (SELECT COUNT(*) FROM exam WHERE semester = 'SPRING') AS SpringCount 
FROM Exam;