WITH number_range AS ( 
    SELECT 1 AS number 
    UNION ALL 
    SELECT number + 1 FROM number_range 
    WHERE number < 10 ) 
SELECT number FROM number_range; OPTION (MAXRECURSION 1000)