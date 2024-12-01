DECLARE @BatchSize INT = 1000;
DECLARE @RowsAffected INT = 1;

WHILE @RowsAffected > 0
BEGIN
    DELETE TOP (@BatchSize)
    FROM Registration 
    WHERE year < 2022;
    
    SET @RowsAffected = @@ROWCOUNT;
END
