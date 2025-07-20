SET @sql = NULL; 
SELECT GROUP_CONCAT(DISTINCT CONCAT( 
    'COUNT(CASE WHEN semester = ''', semester, ''' THEN 1 END) AS `', semester, '`' ) ) 
INTO @sql 
FROM Teaching; 
SET @sql = CONCAT('SELECT role, ', @sql, ' 
                  FROM Teaching 
                  GROUP BY role'); 
PREPARE stmt FROM @sql; 
EXECUTE stmt; 
DEALLOCATE PREPARE stmt;
