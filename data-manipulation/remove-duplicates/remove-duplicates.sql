-- Inserting Duplicate Records
INSERT INTO Registration (id, semester, year, course_id, student_id)
VALUES 
    (100, 'Fall', 2021, 'CS211', 1001),
    (200, 'Fall', 2021, 'CS211', 1001),
    (300, 'Spring', 2022, 'CS212', 1007),
    (400, 'Spring', 2022, 'CS212', 1007),
    (500, 'Spring', 2022, 'CS213', 1003),
    (600, 'Spring', 2022, 'CS213', 1003);

-- Finding Duplicates using GROUP BY and COUNT
SELECT semester, year, course_id, student_id, COUNT(*) as count
FROM Registration
GROUP BY semester, year, course_id, student_id
HAVING COUNT(*) > 1;
Select version();
-- Finding Duplicates using ROW_NUMBER() with PARTITION BY
SELECT id, semester, year, course_id, student_id,
    ROW_NUMBER() OVER (
        PARTITION BY semester, year, course_id, student_id
        ORDER BY id
    ) AS rn
FROM
    Registration;

-- Deleting Duplicates using Self-Join
DELETE r1 FROM Registration r1
INNER JOIN Registration r2
WHERE
    r1.semester = r2.semester AND
    r1.year = r2.year AND
    r1.course_id = r2.course_id AND
    r1.student_id = r2.student_id AND
    r1.id > r2.id;

-- Inserting Duplicate Records
INSERT INTO Registration (id, semester, year, course_id, student_id)
VALUES 
    (100, 'Fall', 2021, 'CS211', 1001),
    (200, 'Fall', 2021, 'CS211', 1001),
    (300, 'Spring', 2022, 'CS212', 1007),
    (400, 'Spring', 2022, 'CS212', 1007),
    (500, 'Spring', 2022, 'CS213', 1003),
    (600, 'Spring', 2022, 'CS213', 1003);

-- Deleting Duplicates using Subqueries
DELETE FROM Registration
WHERE id IN (
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
);