SELECT semester, year, course_id, student_id, COUNT(*) as count 
FROM Registration 
GROUP BY semester, year, course_id, student_id 
HAVING COUNT(*) > 1;