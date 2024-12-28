SELECT  publisher_id, 
q1sales+q2sales AS magazine_sales, 
SUM(q1sales+q2sales) 
    OVER(PARTITION BY publisher_id) AS publisher_sales, 
SUM(q1sales+q2sales) 
    OVER() AS total_sales 
FROM magazine 
WINDOW w AS (PARTITION BY publisher_id ORDER BY publisher_id);
