
-- Sort a list of strings in ascending order
SELECT name 
FROM Student
ORDER BY name;

-- Alternatively, you can use ASC to explicitly specify ascending order; the results will be the same
SELECT name 
FROM Student
ORDER BY name ASC;

-- Sort a list of strings in descending order
SELECT name 
FROM Student
ORDER BY name DESC;

-- Sort the entire table based on a list of strings
SELECT * 
FROM Student
ORDER BY name DESC;

-- Sort a list of strings in a specific predefined order
SELECT * 
FROM Department
ORDER BY FIELD(name, "Electronics and Communications", "Mathematics", "Civil Engineering") DESC;


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


