DECLARE @StudentID INT;
DECLARE @StudentName NVARCHAR(100);

-- Declare the cursor
DECLARE StudentCursor CURSOR FOR
SELECT id, name FROM Student;

-- Open the cursor
OPEN StudentCursor;

-- Fetch the first row
FETCH NEXT FROM StudentCursor INTO @StudentID, @StudentName;

-- Loop through each row
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Process each row
    PRINT 'Processing Student: ' + @StudentName;
    
    -- Fetch the next row
    FETCH NEXT FROM StudentCursor INTO @StudentID, @StudentName;
END;

-- Close and deallocate the cursor
CLOSE StudentCursor;
DEALLOCATE StudentCursor;
