SELECT [role], 
       [SPRING] AS spring_count, 
       [FALL] as fall_count 
FROM ( 
  SELECT [role], semester 
  FROM Teaching 
  ) AS source 
PIVOT ( 
  COUNT(semester) 
  FOR semester IN ([SPRING], [FALL]) 
  ) AS pivot_table;
