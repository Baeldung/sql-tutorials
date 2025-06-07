SELECT  publisher_id,magazine_name,
COALESCE(q1sales,0)+COALESCE(q2sales,0) AS magazine_sales,
SUM(COALESCE(q1sales,0)+COALESCE(q2sales,0))
    OVER(PARTITION BY publisher_id) AS publisher_sales,
SUM(COALESCE(q1sales,0)+COALESCE(q2sales,0))
    OVER() AS total_sales
FROM magazine_nullable
WINDOW w AS (PARTITION BY publisher_id ORDER BY publisher_id);
