SELECT  
publisher_id, magazine_name,
SUM(q1sales + q2sales) AS Q1_Q2_Sales
FROM magazine
GROUP BY publisher_id,magazine_name;
