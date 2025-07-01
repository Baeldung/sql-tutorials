
-- This statement generates the Error 1093
DELETE FROM Program
WHERE id IN 
(SELECT id FROM Program WHERE department_id=1);

-- This statement fixes the Error 1093 in the preceding example using a derived table
DELETE FROM Program
WHERE id IN (
  SELECT subquery_program.id
  FROM (
    SELECT id
    FROM Program
    WHERE department_id=1
  ) AS subquery_program
);


-- This set of statements fixes the Error 1093 in the example using a temporary table
-- Create a temporary table 
CREATE TEMPORARY TABLE temp_ids AS
SELECT id 
FROM Program 
WHERE department_id=1;

-- Delete from the main table using the temporary table
DELETE FROM Program
WHERE id 
IN (SELECT id FROM temp_ids);

-- Drop the temporary table
DROP TEMPORARY TABLE IF EXISTS temp_ids;

-- This statement fixes the Error 1093 using a self-join
DELETE t1
FROM Program t1
JOIN (
    SELECT id
    FROM Program
    WHERE department_id=1
) AS t2 ON t1.id = t2.id;
