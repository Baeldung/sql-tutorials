-- row_number 
WITH RankedCourses AS ( 
    SELECT *, ROW_NUMBER() OVER (
        PARTITION BY department_id ORDER BY credits DESC
    ) AS row_num FROM Course 
) 
SELECT * from RankedCourses WHERE row_num <=2;

-- rank
WITH RankedCourses AS ( 
    SELECT *, RANK() OVER (
        PARTITION BY department_id ORDER BY credits DESC
    ) AS rank FROM Course 
) 
SELECT * from RankedCourses WHERE rank <=2;

-- dense_rank
WITH RankedCourses AS ( 
    SELECT *, DENSE_RANK() OVER (
        PARTITION BY department_id ORDER BY credits DESC
    ) AS dense_rank FROM Course 
) 
SELECT * from RankedCourses WHERE dense_rank <=2;