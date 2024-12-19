SELECT id, name 
FROM Course 
WHERE name COLLATE Latin1_General_CI_AS like '%OPERATING%';