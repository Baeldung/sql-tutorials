SELECT 
    f.name 
FROM 
    Faculty f 
WHERE 
    f.department_id IN (SELECT d.id FROM Department d WHERE (SELECT COUNT(*) FROM Faculty f WHERE f.department_id = d.id) > 17);
