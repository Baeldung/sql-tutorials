-- Using SUBSTRING Function

SELECT 
  SUBSTRING(column_name, 1, LEN(column_name) - 2) AS modified_name 
FROM table_name;

-- Using LEFT Function

SELECT 
  LEFT(column_name, LEN(column_name) - 2) AS modified_name 
FROM table_name;

-- Handling edge cases

SELECT CASE 
    WHEN LEN(column_name) > 2 THEN LEFT(column_name, LEN(column_name) - 2)
    ELSE column_name 
END AS modified_name 
FROM table_name;
