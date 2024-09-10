SELECT id, enrollment_date,
ROW_NUMBER() OVER (ORDER BY enrollment_date) AS EnrollmentOrder,
COUNT(*) OVER (PARTITION BY YEAR(enrollment_date)) AS StudentsPerYear,
AVG(gpa) OVER (ORDER BY enrollment_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS Avg3GPAs,
LEAD(name, 1, 'No next student') OVER (ORDER BY id) AS NextStudent
FROM Student
ORDER BY enrollment_date, id;