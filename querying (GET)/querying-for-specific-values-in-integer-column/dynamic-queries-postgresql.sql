SELECT * FROM table_name 
WHERE column_name = CASE
    WHEN column_value IS NOT NULL THEN column_value  -- Replace column_value with the desired filter value
    ELSE column_name
END;
