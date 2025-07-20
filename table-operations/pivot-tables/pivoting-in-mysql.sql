SELECT 
  role, 
  COUNT(CASE WHEN semester = 'SPRING' THEN 1 END) AS spring_count, 
  COUNT(CASE WHEN semester = 'FALL' THEN 1 END) AS fall_count 
FROM teaching 
GROUP BY role;
