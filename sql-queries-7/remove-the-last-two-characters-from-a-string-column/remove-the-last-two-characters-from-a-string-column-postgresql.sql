-- Using SUBSTRING Function

SELECT 
  SUBSTRING(column_name FROM 1 FOR LENGTH(column_name) - 2) AS modified_name
FROM table_name;

-- Handling Edge Cases

SELECT CASE 
    WHEN LENGTH(column_name) > 2 THEN LEFT(column_name, LENGTH(column_name) - 2)
    ELSE column_name 
END AS modified_name 
FROM table_name;