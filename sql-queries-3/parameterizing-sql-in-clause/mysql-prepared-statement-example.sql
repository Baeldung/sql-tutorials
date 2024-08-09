SET @StudentIds = '1001,1003,1007';
SET @sql = CONCAT('SELECT * FROM Student WHERE id IN (', @StudentIds, ')');
PREPARE stmt FROM @sql;
EXECUTE stmt;
