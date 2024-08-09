-- Inserting Duplicate Records
INSERT INTO Registration (id, semester, year, course_id, student_id)
VALUES 
    (100, 'Fall', 2021, 'CS211', 1001),
    (200, 'Fall', 2021, 'CS211', 1001),
    (300, 'Spring', 2022, 'CS212', 1007),
    (400, 'Spring', 2022, 'CS212', 1007),
    (500, 'Spring', 2022, 'CS213', 1003),
    (600, 'Spring', 2022, 'CS213', 1003);

-- Deleting Duplicates using a Common Table Expression (CTE)
WITH COUNTED_DUPLICATES AS (
    SELECT id,
        ROW_NUMBER() OVER (
            PARTITION BY semester, year, course_id, student_id
            ORDER BY id
        ) AS rn
    FROM Registration
)
DELETE FROM COUNTED_DUPLICATES
WHERE rn > 1;


-- Remove Duplicates Without a Unique Identifier 

-- Removing with CTE and Inner Join
WITH RankedStudentRegistration AS (
    SELECT semester, year, course_id, student_id, 
      ROW_NUMBER() OVER (
        PARTITION BY semester, year, reg_datetime, course_id, student_id
        ORDER BY (SELECT NULL)
      ) AS rn
    FROM Registration
)

DELETE Registration FROM Registration
INNER JOIN RankedStudentRegistration
ON
   Registration.semester = RankedStudentRegistration.semester
   AND Registration.year = RankedStudentRegistration.year
   AND Registration.course_id = RankedStudentRegistration.course_id
   AND Registration.student_id = RankedStudentRegistration.student_id
WHERE RankedStudentRegistration.rn > 1;