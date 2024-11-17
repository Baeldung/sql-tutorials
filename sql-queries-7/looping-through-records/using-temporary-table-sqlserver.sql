-- Create a temporary table
CREATE TABLE #TempStudent (id INT, name NVARCHAR(100));

-- Insert data into the temporary table
INSERT INTO #TempStudent (id, name)
SELECT id, name FROM Student;

DECLARE @Counter INT = 1;
DECLARE @MaxRow INT = (SELECT COUNT(*) FROM #TempStudent);

WHILE @Counter <= @MaxRow
BEGIN
    -- Process each row based on the counter value
    SELECT name FROM #TempStudent
    WHERE id = (SELECT id FROM #TempStudent ORDER BY id OFFSET @Counter - 1 ROWS FETCH NEXT 1 ROWS ONLY);

    -- Increment the counter
    SET @Counter = @Counter + 1;
END;

-- Drop the temporary table after processing
DROP TABLE #TempStudent;
