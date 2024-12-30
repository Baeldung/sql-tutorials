DECLARE @Counter INT = 1;
DECLARE @MaxID INT = (SELECT MAX(id) FROM Student);

WHILE @Counter <= @MaxID
BEGIN
    -- Process each row based on the counter value
    SELECT name FROM Student WHERE id = @Counter;
    
    -- Increment the counter
    SET @Counter = @Counter + 1;
END;
