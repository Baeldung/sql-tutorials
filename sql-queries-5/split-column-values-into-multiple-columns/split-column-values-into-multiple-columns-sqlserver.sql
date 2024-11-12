-- Using SUBSTRING and CHARINDEX Functions

SELECT 
    SUBSTRING(column_name, 1, CHARINDEX(' ', column_name + ' ') - 1) AS new_column_name_1,
    SUBSTRING(column_name, LEN(column_name) - CHARINDEX(' ', REVERSE(column_name)) + 2, LEN(column_name)) AS new_column_name_2
FROM table_name;

-- Handling More Complex Scenarios

SELECT
  SUBSTRING(column_name, 1, CHARINDEX(' ', column_name + ' ') - 1) AS new_column_name_1,
  
  CASE
    WHEN LEN(column_name) - LEN(REPLACE(column_name, ' ', '')) < 2
    THEN NULL
    ELSE SUBSTRING(column_name, CHARINDEX(' ', column_name) + 1, 
                   CHARINDEX(' ', column_name + ' ', CHARINDEX(' ', column_name) + 1) - CHARINDEX(' ', column_name) - 1)
  END AS new_column_name_2,

  SUBSTRING(column_name, LEN(column_name) - CHARINDEX(' ', REVERSE(column_name)) + 2, LEN(column_name)) AS new_column_name_3
FROM table_name;
