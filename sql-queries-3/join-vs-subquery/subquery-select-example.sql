SELECT 
    d.name AS department_name,
    (SELECT COUNT(*) FROM Faculty f WHERE f.department_id = d.id) AS faculty_count
FROM 
    Department d;