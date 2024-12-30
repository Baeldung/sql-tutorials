-- View the tables
SELECT * FROM student LIMIT 3;

SELECT * FROM registration LIMIT 3;


-- Let's create the CTE here, named course_count 
WITH Course_count AS ( 
    SELECT student_id, COUNT(course_id) AS total_courses 
    FROM Registration GROUP BY student_id 
) 

-- select a column from student and CTE (Course_count) table, and filter information 
SELECT s.name AS student_name, cc.total_courses As courses_registered 
FROM Student s 
JOIN Course_count cc ON s.id = cc.student_id 
WHERE cc.total_courses > 12;

