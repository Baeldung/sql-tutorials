SELECT 
publisher_id, 
SUM(q1sales) + SUM(q2sales) AS Q1Q2Sales
FROM magazine_nullable WHERE publisher_id&lt;3
GROUP BY publisher_id;
