CREATE PROCEDURE find_students_by_ids
    @StudentIds VARCHAR(MAX)
AS
BEGIN
    SELECT *
    FROM Student
    WHERE id IN (SELECT value FROM STRING_SPLIT(@StudentIds, ','))
END;

EXEC find_students_by_ids '1001,1003,1007';