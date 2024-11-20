
-- Sort a list of strings in ascending or descending order
SELECT * 
FROM Department
ORDER BY code DESC;

-- Sort a list of strings in a specific predefined order using a CASE statement
SELECT name, code
FROM Department
ORDER BY 
    CASE name
        WHEN 'Electronics and Communications' THEN 1
        WHEN 'Mathematics' THEN 2
        WHEN 'Computer Science' THEN 3
        ELSE 4
    END;

