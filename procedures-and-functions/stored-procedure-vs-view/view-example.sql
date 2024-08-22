CREATE VIEW StudentGraduationGPA AS 
SELECT id, name, graduation_date, gpa 
FROM Student 
WHERE graduation_date IS NOT NULL;

SELECT * FROM StudentGraduationGPA;

