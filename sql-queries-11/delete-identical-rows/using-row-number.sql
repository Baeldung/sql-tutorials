-- PostgreSQL / MS SQL Server / MySQL Server
WITH CTE_DuplicateRecords AS (
    SELECT
        RecordID,
        Value1,
        Value2,
        Value3,
        ROW_NUMBER() OVER (PARTITION BY Value1, Value2, Value3 ORDER BY RecordID) as rn
    FROM
        DuplicateRecords
)
DELETE FROM DuplicateRecords
WHERE RecordID IN (SELECT RecordID FROM CTE_DuplicateRecords WHERE rn > 1);