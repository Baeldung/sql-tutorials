-- PostgreSQL
DELETE FROM DuplicateRecords DR1
USING DuplicateRecords DR2
WHERE
    DR1.Value1 = DR2.Value1 AND
    DR1.Value2 = DR2.Value2 AND
    DR1.Value3 = DR2.Value3 AND
    DR1.RecordID > DR2.RecordID;

-- MySQL
DELETE FROM DR1
USING DuplicateRecords DR1
JOIN DuplicateRecords DR2 ON
    DR1.Value1 = DR2.Value1 AND
    DR1.Value2 = DR2.Value2 AND
    DR1.Value3 = DR2.Value3 AND
    DR1.RecordID > DR2.RecordID;

-- MS SQL Server
DELETE DR1
FROM DuplicateRecords DR1
JOIN DuplicateRecords DR2 
    ON DR1.Value1 = DR2.Value1 
    AND DR1.Value2 = DR2.Value2 
    AND DR1.Value3 = DR2.Value3 
    AND DR1.RecordID &gt; DR2.RecordID;
