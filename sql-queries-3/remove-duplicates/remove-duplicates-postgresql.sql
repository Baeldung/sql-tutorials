-- Inserting Duplicate Records
INSERT INTO Registration (id, semester, year, course_id, student_id)
VALUES 
    (100, 'Fall', 2021, 'CS211', 1001),
    (200, 'Fall', 2021, 'CS211', 1001),
    (300, 'Spring', 2022, 'CS212', 1007),
    (400, 'Spring', 2022, 'CS212', 1007),
    (500, 'Spring', 2022, 'CS213', 1003),
    (600, 'Spring', 2022, 'CS213', 1003);


-- Deleting Duplicates using the USING clause
DELETE FROM Registration
USING (
    SELECT id
    FROM (
        SELECT id,
            ROW_NUMBER() OVER (
                PARTITION BY semester, year, course_id, student_id
                ORDER BY id
            ) as rn
        FROM Registration
    ) t
    WHERE t.rn > 1
) duplicate
WHERE Registration.id = duplicate.id;

-- Remove Duplicates Without a Unique Identifier 

-- Removing with CTE and USING clause
WITH RankedStudentRegistration AS ( 
    SELECT semester, year, course_id, student_id,
      ROW_NUMBER() OVER (
        PARTITION BY semester, year, reg_datetime, course_id, student_id
        ORDER BY (SELECT NULL)
      ) AS rn
    FROM Registration
)

DELETE FROM Registration
USING RankedStudentRegistration
WHERE (
    Registration.semester = RankedStudentRegistration.semester
    AND Registration.year = RankedStudentRegistration.year
    AND Registration.course_id = RankedStudentRegistration.course_id
    AND Registration.student_id = RankedStudentRegistration.student_id
    AND RankedStudentRegistration.rn > 1
);

-- Removing using ctid system column
DELETE FROM Registration
WHERE ctid NOT IN (
    SELECT MIN(ctid) FROM Registration
    GROUP BY semester, year, course_id, student_id, reg_datetime
);