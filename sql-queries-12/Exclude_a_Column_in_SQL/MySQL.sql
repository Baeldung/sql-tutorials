-- Exclude textbook column from course table
SET @sql = NULL;
SELECT GROUP_CONCAT(CONCAT('`', COLUMN_NAME, '`') ORDER BY ORDINAL_POSITION SEPARATOR ', ')
INTO @sql
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'university'
  AND TABLE_NAME = 'course'
  AND COLUMN_NAME <> 'textbook';
SET @sql = CONCAT('SELECT ', @sql, ' FROM course');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
