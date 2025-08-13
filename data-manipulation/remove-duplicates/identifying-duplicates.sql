SELECT semester, year, reg_datetime, course_id, student_id, COUNT(*)
FROM modifiedregistration
GROUP BY semester, year, reg_datetime, course_id, student_id
HAVING COUNT(*) > 1;