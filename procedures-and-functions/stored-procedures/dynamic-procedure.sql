-- DELIMITER //

-- CREATE PROCEDURE DynamicCourseQuery(
--     IN where_clause VARCHAR(1000)
-- )
-- BEGIN
--     SET @sql = CONCAT('SELECT id, name, credits FROM Course WHERE ', where_clause);
--     PREPARE stmt FROM @sql;
--     EXECUTE stmt;
--     DEALLOCATE PREPARE stmt;
-- END //

-- DELIMITER ;

CALL DynamicCourseQuery('credits < 3 AND department_id = 1');