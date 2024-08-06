USE University;

-- Difference between Single and Composite Index

-- Explain Single Index
SELECT *
FROM University.Student;

DESCRIBE University.Student;

SELECT *
FROM University.Student
WHERE national_id = '123345566';

EXPLAIN SELECT *
FROM University.Student
WHERE national_id = '123345566';

CREATE INDEX idx_national_id
ON University.Student (national_id);

EXPLAIN SELECT *
FROM University.Student
WHERE national_id = '123345566';

-- Difference between Single and Composite Index

SELECT * 
FROM University.Registration;

SELECT student_id, course_id, semester, reg_datetime
FROM University.Registration
WHERE semester = 'Fall'
AND student_id = 1001
ORDER BY 2
;

EXPLAIN SELECT student_id, course_id, semester, reg_datetime
FROM University.Registration
WHERE semester = 'Fall'
AND student_id = 1001
ORDER BY 2
;

CREATE INDEX idx_student_id 
ON University.Registration (student_id);

CREATE INDEX idx_student_id_semester_course
ON University.Registration (student_id, semester, course_id);


-- Multi-Column Searches

SELECT *
FROM University.Course;

SELECT *
FROM University.Faculty;

SELECT *
FROM University.Department;

SHOW INDEXES IN University.Course;

SELECT id 
FROM University.Department
WHERE name = 'Computer Science';

SELECT id, name, department_id, position
FROM University.Faculty
WHERE department_id = (
	SELECT id 
    FROM University.Department
    WHERE name = 'Computer Science'
    )
ORDER BY 4, 2
;

EXPLAIN SELECT id, name, department_id, position
FROM University.Faculty
WHERE department_id = (
	SELECT id 
    FROM University.Department
    WHERE name = 'Computer Science'
    )
ORDER BY 4, 2
;
CREATE INDEX idx_department_position_name 
ON University.Faculty (department_id, position, name);

SHOW INDEXES IN University.Faculty;


CREATE INDEX idx_department_position 
ON University.Faculty (department_id, position);

-- Sorting and Grouping 

-- Registration and Course Tables - Sorting and Grouping by semester and Year
-- Find the number of students registered in each courses for each semester, ordered by year and semester

SELECT *
FROM University.Registration;

SELECT *
FROM University.Course;

SELECT c.name AS course_name,
r.semester AS semester,
YEAR(r.reg_datetime) AS year,
COUNT(r.student_id) AS student_count
FROM University.Registration r
JOIN University.Course c
	ON r.course_id = c.id
WHERE YEAR(r.reg_datetime) = 2023
GROUP BY 1, 2, 3
ORDER BY 3, 2
;

EXPLAIN SELECT c.name AS course_name,
r.semester AS semester,
YEAR(r.reg_datetime) AS year,
COUNT(r.student_id) AS student_count
FROM University.Registration r
JOIN University.Course c
	ON r.course_id = c.id
WHERE YEAR(r.reg_datetime) = 2023
GROUP BY 1, 2, 3
ORDER BY 3, 2
;

CREATE INDEX idx_reg_course_date 
ON University.Registration (course_id, semester, reg_datetime);

-- Coverign Index
-- Find the grades of all students for a specific course, ordered by exam date

SELECT *
FROM University.Exam;

SELECT student_id,
grade,
exam_date
FROM University.Exam e
WHERE course_id = 'CS211'
ORDER BY exam_date;

EXPLAIN SELECT 
student_id,
grade,
exam_date
FROM University.Exam e
WHERE course_id = 'CS211'
ORDER BY exam_date;

CREATE INDEX idx_course_exam_date_grade_student
ON University.Exam (course_id, exam_date, grade, student_id);



-- Stored Procedure
-- a stored procedure to find the grades for students in a specific course for a given year, ordered by exam date
SHOW INDEXES IN University.Exam;

SELECT *
FROM University.Exam;

DROP PROCEDURE IF EXISTS grades_course_year

DELIMITER $$
CREATE PROCEDURE grades_course_year(
	p_course_id VARCHAR (10),
    p_year INT
)
BEGIN
	SELECT student_id, 
    grade,
    exam_date
    FROM Exam
    WHERE course_id = p_course_id
    AND YEAR(exam_date) = p_year
    ORDER BY exam_date;
END $$
DELIMITER ;

CALL grades_course_year ('CS411', 2023);

-- Creating Composite index covering the stored procedure
CREATE INDEX idx_course_exam
ON University.Exam (course_id, exam_date);











































