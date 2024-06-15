SELECT 
    COUNT(*) FILTER (WHERE position = 'Assistant Professor') AS assistant_professors, 
    COUNT(*) FILTER (WHERE position = 'Professor') AS professors 
FROM Faculty;