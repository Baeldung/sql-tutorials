SELECT COUNT(*) 
FROM (
  SELECT DISTINCT national_id, position 
  FROM Faculty 
) AS subQuery;
