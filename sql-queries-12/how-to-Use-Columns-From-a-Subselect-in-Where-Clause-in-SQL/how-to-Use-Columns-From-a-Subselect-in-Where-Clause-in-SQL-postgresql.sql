-- Scalar Subquery
-- Find Students With the Highest GPA

SELECT name, gpa
FROM Student
WHERE gpa = (
    SELECT MAX(gpa)
    FROM Student
);


-- Find Students Who Scored Above the Average GPA

SELECT name, gpa
FROM Student
WHERE gpa > (
    SELECT AVG(gpa)
    FROM Student
    WHERE gpa IS NOT NULL
);


-- IN Subquery
-- Filter Students With Matching GPA of Non-Graduated Students

SELECT name, gpa
FROM Student
WHERE gpa IN (
    SELECT gpa
    FROM Student
    WHERE graduation_date IS NULL
      AND gpa IS NOT NULL
);


-- EXISTS Subquery
-- Find Students With Duplicate GPAs

SELECT s1.name, s1.gpa
FROM Student s1
WHERE EXISTS (
    SELECT 1
    FROM Student s2
    WHERE s2.gpa = s1.gpa
      AND s2.id <> s1.id
);


-- Filtering With Multiple Columns From a Subquery

SELECT name, gpa, graduation_date
FROM Student
WHERE (gpa, graduation_date) IN (
    SELECT gpa, graduation_date
    FROM Student
    WHERE graduation_date IS NOT NULL
    GROUP BY gpa, graduation_date
    HAVING COUNT(*) > 1
);

