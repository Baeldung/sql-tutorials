SET @schema_name = 'vendor_a';

-- Generate the DROP statements and assign them to a variable
SELECT @drop_statements := GROUP_CONCAT(CONCAT('DROP TABLE IF EXISTS `', table_name, '`') SEPARATOR '; ')
FROM information_schema.tables
WHERE table_schema = @schema_name;

-- Check if there are any tables to drop
IF @drop_statements IS NOT NULL THEN
    -- Prepare and execute the concatenated DROP statements
    PREPARE stmt FROM @drop_statements;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END IF;