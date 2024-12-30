SELECT enrollment_date,
MAX(gpa) AS highest_gpa,
MIN(gpa) AS lowest_gpa
FROM Student
GROUP BY enrollment_date;