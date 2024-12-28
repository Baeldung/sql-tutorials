SELECT  
publisher_id, 
SUM(q1sales + q2sales) AS Q1_Q2_Sales
FROM magazine
GROUP BY publisher_id;
