-- display top 10 rows of the Student table
SELECT * FROM Student 
LIMIT 10;

-- display top 10 result from a join of Exam
-- and Student table
SELECT * FROM Exam 
JOIN Student ON Exam.student_id = Student.id 
LIMIT 10;


-- UPDATE JOIN with WHERE clause
UPDATE Exam 
SET e.grade = 'C' 
FROM Exam AS e 
JOIN Student AS s ON e.student_id = s.id 
WHERE s.national_id = 123345566 AND e.grade IS NULL;


-- confirm the output
SELECT * FROM Exam AS e 
JOIN Student AS s ON e.student_id = s.id 
WHERE national_id = 123345566;