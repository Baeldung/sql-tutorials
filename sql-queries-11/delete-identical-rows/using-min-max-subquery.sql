-- PostgreSQL / MS SQL Server
DELETE FROM DuplicateRecords
WHERE RecordID NOT IN (
    SELECT MIN(RecordID)
    FROM DuplicateRecords
    GROUP BY Value1, Value2, Value3
);

-- MySQL
DELETE FROM DuplicateRecords
WHERE RecordID NOT IN (
    SELECT T2.MinRecordID FROM (
        SELECT MIN(RecordID) AS MinRecordID
        FROM DuplicateRecords
        GROUP BY Value1, Value2, Value3
    ) AS T2
);