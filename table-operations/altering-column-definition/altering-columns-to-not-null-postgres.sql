--fetching students' data
SELECT * FROM Student;

--replacing null with 0.0
UPDATE Student SET gpa = 0.0 
WHERE gpa IS NULL;

--altering columns to not null in PostgreSQL
ALTER TABLE Student 
ALTER COLUMN gpa SET NOT NULL;

--verifying columns' nullability
INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
VALUES (1050, 'Mesam Mujtaba', 123456789, '1992-06-20', '2020-01-01', '2024-01-01', NULL);
