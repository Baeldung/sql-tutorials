INSERT INTO registration_analytics(student_id, number_of_course_enrolled, year) 
SELECT student_id, COUNT(course_id) AS number_of_course_enrolled, year 
FROM registration 
GROUP BY course_id, student_id, year;