-- Enabling the tablefunc extension so we can use crosstab()
CREATE EXTENSION IF NOT EXISTS tablefunc;

SELECT * 
FROM crosstab( 
  $$ 
  SELECT role, semester, COUNT(*) 
  FROM Teaching 
  GROUP BY role, semester 
  ORDER BY role, semester 
  $$, 
  $$ VALUES ('SPRING'), ('FALL') $$ 
  ) AS ct(role TEXT, spring_count INT, fall_count INT);
