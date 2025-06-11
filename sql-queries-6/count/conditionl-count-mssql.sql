SELECT 
    COUNT(IIF(position = 'Assistant Professor', 1, NULL)) AS assistant_professors, 
    COUNT(IIF(position = 'Professor', 1, NULL)) AS professors 
FROM Faculty;