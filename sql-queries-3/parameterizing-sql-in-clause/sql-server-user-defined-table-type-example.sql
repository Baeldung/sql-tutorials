CREATE TYPE StudentIDTableType AS TABLE
(
    StudentID INT
);

CREATE PROCEDURE find_students_by_ids
    @StudentIDs StudentIDTableType READONLY
AS
BEGIN
    SELECT *
    FROM Student
    WHERE id IN (SELECT StudentID FROM @StudentIDs)
END;

DECLARE @StudentIDs StudentIDTableType
INSERT INTO @StudentIDs (StudentID) VALUES (1), (2), (3)

EXEC find_students_by_ids @StudentIDs
