-- Sort a list of strings in ascending or descending order
SELECT * 
FROM Department
ORDER BY name DESC;

-- Sort a list of strings in a specific predefined order
SELECT name 
FROM Department 
ORDER BY ARRAY_POSITION(ARRAY['Computer Science', 'Mathematics', 'Civil Engineering'], name);
