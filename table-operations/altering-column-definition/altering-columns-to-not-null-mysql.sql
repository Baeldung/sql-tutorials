--fetching students' data
SELECT * FROM Student;

--replacing null with 0.0
UPDATE Student SET gpa = 0.0 
WHERE gpa IS NULL;

--altering columns to not null in MySQL
ALTER TABLE Student
MODIFY gpa REAL NOT NULL;
