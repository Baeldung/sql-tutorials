USE University;

-- Find the number of Registrations for a specific course by Day of the Week
-- TO_CHAR() function returns the full name of the day
SELECT *
FROM Course;

SELECT *
FROM Registration;

SELECT 
    TO_CHAR(reg_datetime, 'Day') AS day_of_week, 
    COUNT(*) AS registration_count
FROM Registration
WHERE course_id = (
		SELECT id 
		FROM Course 
		WHERE name = 'Introduction to Operating Systems')
GROUP BY 1
ORDER BY 2 DESC;

-- EXTRACT(DOW FROM date) - returns day of the week as a number (0 = Sunday, 1 = Monday)
SELECT *
FROM student;

SELECT 
    EXTRACT(DOW FROM birth_date) AS day_of_week, 
    COUNT(*) AS birthday_count
FROM Student
GROUP BY 1
ORDER BY 2 DESC;

-- using DATE_PART() function (0 = Sunday)
SELECT 
    DATE_PART('dow', birth_date) AS day_of_week, 
    COUNT(*) AS birthday_count
FROM Student
GROUP BY 1
ORDER BY 2 DESC;





