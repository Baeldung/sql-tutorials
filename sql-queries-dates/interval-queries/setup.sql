DELETE FROM Student WHERE ID > 1010; 
ALTER TABLE Student ADD COLUMN created_at TIMESTAMP; 
-- ALTER TABLE Student ADD created_at DATETIME; -- Only for SQL Server 
UPDATE Student SET created_at = '2020-01-01 10:10:20' WHERE id = 1001; 
UPDATE Student SET created_at = '2020-01-02 07:15:20' WHERE id = 1003; 
UPDATE Student SET created_at = '2020-01-03 00:01:32' WHERE id = 1007; 
UPDATE Student SET created_at = '2020-01-01 00:00:01' WHERE id = 1010;