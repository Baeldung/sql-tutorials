SELECT id, SUBSTRING(name, 2, LENGTH(name) - 2) AS new_name FROM Course;

SELECT id, name, SUBSTRING(name, 2, LENGTH(name) - 2) AS new_name FROM Course;

-- SQL Server --
SELECT id, SUBSTRING(name, 2, LEN(name) - 2) AS new_name FROM Course;
