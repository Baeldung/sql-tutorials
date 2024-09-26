WITH RECURSIVE numbers AS ( 
    SELECT 5 AS number 
    UNION ALL 
    SELECT number + 1 FROM numbers 
    WHERE number < 10 ) 
SELECT number FROM numbers;