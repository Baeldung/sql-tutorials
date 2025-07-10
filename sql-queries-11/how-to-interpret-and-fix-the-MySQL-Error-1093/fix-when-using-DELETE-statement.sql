
-- This statement generates the Error 1093
DELETE FROM Program 
WHERE start_date > 
(SELECT MIN(start_date) FROM Program);

-- This statement fixes the Error 1093 in the preceding example using a derived table
DELETE FROM Program
WHERE start_date > (
  SELECT subquery_program.start_date
  FROM (
    SELECT MIN(start_date) AS start_date FROM Program
  ) AS subquery_program
);


-- This set of statements fixes the Error 1093 in the example using a temporary table
- Create a temporary table 
CREATE TEMPORARY TABLE temp_min_start_date AS
SELECT MIN(start_date) AS min_date
FROM Program;

-- Delete from the main table using the temporary table
DELETE FROM Program
WHERE start_date > 
(SELECT min_date FROM temp_min_start_date);

-- Drop the temporary table
DROP TEMPORARY TABLE temp_min_start_date;

-- This statement fixes the Error 1093 using a join with a derived table
DELETE p
FROM Program AS p
JOIN (SELECT MIN(start_date) AS min_start_date FROM Program) 
AS min_program_date
ON p.start_date > min_program_date.min_start_date;
