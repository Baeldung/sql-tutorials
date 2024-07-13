SELECT 
    d.name 
FROM 
    Department d 
WHERE 
    (SELECT COUNT(*) FROM Faculty f WHERE f.department_id = d.id) > 
    (SELECT MIN(faculty_count) 
     FROM (SELECT COUNT(*) AS faculty_count 
           FROM Faculty 
           GROUP BY department_id) AS subquery);
