CREATE TABLE StudentsWithHighGPA
(
id INT,
name VARCHAR(255),
gpa FLOAT,
graduation_date DATE
);

WITH HighGPAStudents (id, name, gpa, graduation_date)
AS
(
SELECT id, name, gpa, graduation_date
FROM Student
WHERE gpa > 3.5
)

INSERT INTO StudentsWithHighGPA
SELECT *
FROM HighGPAStudents;

SELECT * FROM StudentsWithHighGPA;