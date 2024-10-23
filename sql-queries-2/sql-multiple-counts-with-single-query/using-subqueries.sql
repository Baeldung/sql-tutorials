-- using subqueries for multiple counts
SELECT COUNT(*) AS total_count, 
        (SELECT COUNT(*) FROM Exam WHERE semester = 'FALL') AS fall_count, 
        (SELECT COUNT(*) FROM Exam WHERE semester = 'SPRING') AS spring_count 
FROM Exam;