-- Using DATENAME() Function - extracts the full name of the day
SELECT *
FROM Faculty;

SELECT 
    DATENAME(weekday, start_date) AS day_of_week, 
    COUNT(*) AS start_count
FROM Faculty
GROUP BY DATENAME(weekday, start_date)
ORDER BY 2 DESC;


-- DATEPART(weekday, date) - return numeric day of the week (1 = Sunday, .. 7 = Saturday)
SELECT *
FROM Student;

SELECT 
    DATEPART(weekday, birth_date) AS day_of_week, 
    COUNT(*) AS start_count
FROM Student
GROUP BY DATEPART(weekday, birth_date)
ORDER BY 2 DESC;






