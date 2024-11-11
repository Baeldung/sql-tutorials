CREATE PROCEDURE find_students_by_ids
    @StudentIds VARCHAR(MAX)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX)
    SET @SQL = 'SELECT * FROM Student WHERE id IN (' + @StudentIds + ')'
    EXEC sp_executesql @SQL
END;

EXEC find_students_by_ids '1001,1003,1007';
