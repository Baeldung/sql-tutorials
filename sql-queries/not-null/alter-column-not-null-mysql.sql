--fetching students' data
SELECT * FROM student;

--replacing null with 0.0
UPDATE student SET gpa = 0.0 
WHERE gpa IS NULL;

--altering columns to not null in MySQL
ALTER TABLE student MODIFY gpa REAL NOT NULL;
