SELECT name, position,
COUNT(*) OVER (PARTITION BY name) AS Total_Positions
FROM Faculty;