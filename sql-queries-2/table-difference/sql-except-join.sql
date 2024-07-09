SELECT * 
  FROM updated_department 
  EXCEPT 
    SELECT * 
    FROM department;

SELECT * 
  FROM department 
  EXCEPT 
    SELECT * 
    FROM updated_department;

SELECT fac.id as faculty_id, fac.name as faculty_name, fac.position, dep.name as department, dep.code as code, dep.id as dept_id, fac.start_date, fac.end_date 
    FROM Faculty fac 
    LEFT JOIN Department dep 
    ON dep.id = fac.department_id;

SELECT fac.id as faculty_id, fac.name as faculty_name, fac.position, dep.name as department, dep.code as code, dep.id as dept_id, fac.start_date, fac.end_date 
    FROM Faculty fac 
    LEFT JOIN Department dep 
    ON dep.id = fac.department_id 
        WHERE fac.end_date IS NULL;
