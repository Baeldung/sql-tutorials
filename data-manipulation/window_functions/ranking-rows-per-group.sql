-- row_number()
SELECT 
    id, 
    name, 
    credits, 
    department_id, 
    ROW_NUMBER() OVER(PARTITION BY department_id ORDER BY credits DESC) AS row_num 
FROM Course;

-- rank()
SELECT 
    id, 
    name, 
    credits, 
    department_id, 
    RANK() OVER(PARTITION BY department_id ORDER BY credits DESC) AS rank 
FROM Course;

-- dense_rank()
SELECT 
    id, 
    name, 
    credits, 
    department_id, 
    DENSE_RANK() OVER(PARTITION BY department_id ORDER BY credits DESC) AS rank 
FROM Course;