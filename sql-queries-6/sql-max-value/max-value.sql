SELECT * 
  FROM Company_sales;

SELECT product_id, GREATEST(q1_sales, q2_sales, q3_sales, q4_sales) AS max_sales 
  FROM Company_sales;

SELECT product_id, MAX(value) AS max_value 
	FROM (
  SELECT product_id, q1_sales AS value 
    FROM Company_sales
	UNION ALL
	SELECT product_id, q2_sales AS value 
    FROM Company_sales
	UNION ALL
	SELECT product_id, q3_sales AS value 
    FROM Company_sales
	UNION ALL
	SELECT product_id, q4_sales AS value 
  FROM Company_sales
  ) AS combined
	GROUP BY product_id 
  ORDER BY product_id ASC;
