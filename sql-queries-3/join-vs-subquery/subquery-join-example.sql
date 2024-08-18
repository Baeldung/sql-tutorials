SELECT 
    f.id AS faculty_id,
    f.name AS faculty_name,
    d.name AS department_name,
    dept_counts.faculty_count
FROM 
    Faculty f 
JOIN 
    Department d ON f.department_id = d.id
JOIN 
    (SELECT department_id, COUNT(*) AS faculty_count FROM Faculty GROUP BY department_id) dept_counts 
    ON f.department_id = dept_counts.department_id;
