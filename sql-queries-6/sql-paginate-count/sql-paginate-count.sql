SELECT * 
  FROM Faculty 
    ORDER BY id 
    OFFSET 1 
    LIMIT 3;

SELECT id, name, position, start_date, end_date, department_id, 
    COUNT(*) OVER() AS full_count 
  FROM Faculty;

SELECT id, name, position, start_date, end_date, department_id, 
    COUNT(*) OVER() AS full_count 
  FROM Faculty 
    ORDER BY id 
    OFFSET 1 
    LIMIT 4;
