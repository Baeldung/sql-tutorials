SELECT
publisher_id,
SUM(COALESCE(q1sales,0)) + SUM(COALESCE(q2sales,0)) AS Q1Q2Sales
FROM magazine_nullable
GROUP BY publisher_id;
