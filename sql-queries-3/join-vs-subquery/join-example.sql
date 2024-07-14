SELECT f.id AS faculty_id, f.name AS faculty_name, d.name AS department_name 
FROM Faculty f 
FULL OUTER JOIN Department d ON f.department_id = d.id;