SELECT 
  SUM(CASE WHEN is_active = 'Yes' THEN credits ELSE 0 END) AS active_credits, 
  SUM(CASE WHEN is_active = 'No' THEN credits ELSE 0 END) AS inactive_credits 
FROM Course;
