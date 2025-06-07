SELECT
publisher_id,magazine_name,
SUM(q1sales) + SUM(q2sales) AS Q1Q2Sales
FROM magazine
GROUP BY publisher_id,magazine_name;
