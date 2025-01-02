SELECT 
publisher_id, 
SUM(q1sales) + SUM(q2sales) AS Q1Q2Sales
FROM magazine
GROUP BY publisher_id;
