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

SELECT dep.*, fac.* 
  FROM faculty fac 
  LEFT JOIN department dep 
    ON dep.id = fac.department_id;

SELECT dep.*, fac.* 
  FROM faculty fac 
  LEFT JOIN department dep 
    ON dep.id = fac.department_id 
    WHERE fac.end_date IS NULL;

SELECT dep.*, fac.* 
  FROM faculty fac 
  LEFT JOIN department dep 
    ON dep.id = fac.department_id 
    WHERE fac.end_date IS NOT NULL;
