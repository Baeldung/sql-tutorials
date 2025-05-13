SELECT EXISTS ( 
    SELECT * FROM information_schema.tables 
    WHERE TABLE_SCHEMA = 'University' 
    AND TABLE_NAME = 'Student' 
) AS table_exist;