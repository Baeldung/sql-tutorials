SELECT d.name, f.name 
FROM Department d 
LEFT JOIN Faculty f ON d.id = f.department_id;

SELECT f.name, d.name 
FROM Faculty f 
LEFT JOIN Department d ON f.department_id = d.id;
