-- Creating the temporary table
CREATE TEMPORARY TABLE TempExamIds AS
SELECT id
FROM Exam
WHERE grade IS NULL;

-- Performing the DELETE operation
DELETE
FROM Exam
WHERE id IN
    (SELECT id
     FROM TempExamIds);

-- (Optional) Dropping the temporary table
DROP TEMPORARY TABLE TempExamIds;
