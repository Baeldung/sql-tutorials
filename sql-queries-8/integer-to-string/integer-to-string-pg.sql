SELECT * 
  FROM Faculty;

SELECT national_id::text || name 
  FROM Faculty 
  LIMIT 2;
