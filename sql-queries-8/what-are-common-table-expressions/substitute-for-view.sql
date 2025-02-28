-- USING CTE as a substitute for view
WITH EnrollmentStats AS ( 
    SELECT YEAR(s.enrollment_date) AS enrollment_year, 
            AVG(s.gpa) AS average_gpa 
    FROM Student AS s 
    WHERE s.gpa IS NOT NULL 
    GROUP BY YEAR(s.enrollment_date) 
    ) 
    SELECT enrollment_year, 
            ROUND(average_gpa,3) AS average_gpa
    FROM EnrollmentStats 
    WHERE average_gpa > 3.0 
    ORDER BY enrollment_year;