-- with row_number 
WITH RankedCourses AS ( 
    SELECT *, ROW_NUMBER() OVER (
        PARTITION BY department_id ORDER BY credits DESC
    ) AS rank FROM Course 
) 
SELECT * from RankedCourses WHERE rank <=2;

-- with rank
WITH RankedCourses AS ( 
    SELECT *, RANK() OVER (
        PARTITION BY department_id ORDER BY credits DESC
    ) AS rank FROM Course 
) 
SELECT * from RankedCourses WHERE rank <=2;

-- with dense_rank
WITH RankedCourses AS ( 
    SELECT *, DENSE_RANK() OVER (
        PARTITION BY department_id ORDER BY credits DESC
    ) AS rank FROM Course 
) 
SELECT * from RankedCourses WHERE rank <=2;

