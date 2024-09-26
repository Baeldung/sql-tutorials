USE University;

-- Using the DAYOFWEEK() function to find out in which day of the week students most frequently registered for the course
-- returns number between 1(Sunday) and 7(Saturday)
SELECT 
	DAYOFWEEK(reg_datetime) AS day_of_week,
    COUNT(*) AS registration_count
FROM University.Registration
GROUP BY 1
ORDER BY 2 DESC
;
-- Modifying the query so that it shows the name of the weekday
SELECT 
    CASE 
        WHEN DAYOFWEEK(reg_datetime) = 1 THEN 'Sunday'
        WHEN DAYOFWEEK(reg_datetime) = 2 THEN 'Monday'
        WHEN DAYOFWEEK(reg_datetime) = 3 THEN 'Tuesday'
        WHEN DAYOFWEEK(reg_datetime) = 4 THEN 'Wednesday'
        WHEN DAYOFWEEK(reg_datetime) = 5 THEN 'Thursday'
        WHEN DAYOFWEEK(reg_datetime) = 6 THEN 'Friday'
        WHEN DAYOFWEEK(reg_datetime) = 7 THEN 'Saturday'
    END AS day_of_week,
    COUNT(*) AS registration_count
FROM Registration
GROUP BY 1
ORDER BY 2 DESC;

-- find the day of the week with the most exams - DAYNAME()
SELECT *
FROM University.Exam;

SELECT 
    DAYNAME(exam_date) AS day_of_week, 
    COUNT(*) AS exam_count
FROM Exam
GROUP BY 1
ORDER BY 2 DESC;

-- Find the day of the week when the faculty member started their job WEEKDAY()
-- 0 = Monday, 1 = Tuesday...6 = Sunday
SELECT *
FROM University.Faculty;

SELECT 
    WEEKDAY(start_date) AS weekday_index, 
    COUNT(*) AS start_count
FROM Faculty
GROUP BY 1
ORDER BY 2;

-- using DATE_FORMAT() to count how many enrollment were made each day of the week
SELECT *
FROM University.Student;

SELECT 
    DATE_FORMAT(enrollment_date, '%W') AS day_of_week, 
    COUNT(*) AS enrollment_count
FROM Student
GROUP BY 1
ORDER BY 2 DESC;




























