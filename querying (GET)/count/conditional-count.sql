SELECT 
    (SELECT COUNT(*) FROM Faculty WHERE position = 'Professor') AS professor_count, 
    (SELECT COUNT(*) FROM Faculty WHERE position = 'Assistant Professor') AS assistant_professor_count;

SELECT position, COUNT(*) 
FROM Faculty 
WHERE position IN ('Assistant Professor', 'Professor') 
GROUP BY position;

SELECT 
    COUNT(CASE WHEN position = 'Assistant Professor' THEN 1 END) AS assistant_professors, 
    COUNT(CASE WHEN position = 'Professor' THEN 1 END) AS professors 
FROM Faculty;

SELECT 
    COUNT(CASE WHEN position = 'Assistant Professor' AND start_date < '2017-01-01' THEN 1 END) AS assistant_professors, 
    COUNT(CASE WHEN position = 'Professor' THEN 1 END) AS professors 
FROM Faculty;