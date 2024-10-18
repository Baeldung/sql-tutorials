-- Using SUBSTRING_INDEX Function

SELECT 
    SUBSTRING_INDEX(column_name, ' ', 1) AS new_column_name_1, 
    SUBSTRING_INDEX(column_name, ' ', -1) AS new_column_name_2 
FROM 
    table_name;
   
-- Handling More Complex Scenarios
   
SELECT 
    SUBSTRING_INDEX(column_name, ' ', 1) AS new_column_name_1, 
    SUBSTRING(column_name, LOCATE(' ', column_name) + 1, LOCATE(' ', column_name, LOCATE(' ', column_name) + 1) - LOCATE(' ', column_name) - 1) AS new_column_name_2, 
    SUBSTRING_INDEX(column_name, ' ', -1) AS new_column_name_3
FROM 
    table_name;
   
-- Handling Extra Spaces and Multiple Delimiters

SELECT 
    SUBSTRING_INDEX(TRIM(REPLACE(column_name, '  ', ' ')), ' ', 1) AS new_column_name_1, 
    SUBSTRING_INDEX(TRIM(REPLACE(column_name, '  ', ' ')), ' ', -1) AS new_column_name_2 
FROM table_name;


SELECT 
    SUBSTRING_INDEX(REPLACE(REPLACE(column_name, '-', ' '), '_', ' '), ' ', 1) AS new_column_name_1, 
    SUBSTRING_INDEX(REPLACE(REPLACE(column_name, '-', ' '), '_', ' '), ' ', -1) AS new_column_name_2 
FROM table_name;
