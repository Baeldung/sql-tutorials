SELECT 
    COUNT(IF(position = 'Assistant Professor', 1, NULL)) AS assistant_professors, 
    COUNT(IF(position = 'Professor', 1, NULL)) AS professors 
FROM Faculty;

SELECT 
    SUM(position = 'Assistant Professor') AS assistant_professors, 
    SUM(position = 'Professor') AS professors 
FROM Faculty;