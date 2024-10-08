-- Using SPLIT_PART Function

SELECT 
    SPLIT_PART(column_name, ' ', 1) AS new_column_name_1, 
    SPLIT_PART(column_name, ' ', 2) AS new_column_name_2
FROM table_name;

-- Using STRING_TO_ARRAY Function

WITH name_array AS (
    SELECT 
        STRING_TO_ARRAY(column_name, ' ') AS name_parts
    FROM table_name 
)
SELECT 
    name_parts[1] AS new_column_name_1, 
    name_parts[2] AS new_column_name_2 
FROM name_array;

-- Handling More Complex Scenarios

WITH name_array AS (
   SELECT 
       STRING_TO_ARRAY(column_name, ' ') AS name_parts
   FROM table_name 
) 
SELECT 
    name_parts[1] AS new_column_name_1,
    CASE WHEN array_length(name_parts, 1) = 3 THEN name_parts[2] END AS new_column_name_2,
    CASE WHEN array_length(name_parts, 1) = 3 THEN name_parts[3] 
         WHEN array_length(name_parts, 1) = 2 THEN name_parts[2] 
    END AS new_column_name_3 
FROM name_array;
