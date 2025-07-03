-- This statement generates the Error 1093
UPDATE Program t 
SET t.end_date = (SELECT start_date FROM Program WHERE id=t.id);

-- This statement fixes the Error 1093 in the preceding example using a derived table
UPDATE Program t 
SET t.end_date = (
  SELECT subquery_program.start_date FROM (
    SELECT id, start_date FROM Program WHERE id=t.id
  ) AS subquery_program
);

-- This set of statements fixes the Error 1093 in the same example using a temporary table
-- Create a temporary table 
CREATE TEMPORARY TABLE 
IF NOT EXISTS temp_table 
AS SELECT id, start_date 
FROM Program;

-- Update the main table using the temporary table
UPDATE Program t 
JOIN temp_table temp 
ON t.id = temp.id 
SET t.end_date = temp.start_date;

-- Drop the temporary table
DROP TEMPORARY TABLE 
IF EXISTS temp_table;

-- This statement fixes the Error 1093 using a self-join
UPDATE Program p1 
JOIN Program p2 
ON p1.id = p2.id 
SET p1.end_date = p2.start_date;
