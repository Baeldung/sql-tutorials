SELECT id, name 
FROM Student 
WHERE name COLLATE Latin1_General_CI_AS like '%PHIL%';