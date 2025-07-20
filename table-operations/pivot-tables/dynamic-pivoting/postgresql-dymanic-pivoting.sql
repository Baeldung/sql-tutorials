DO $$ 
DECLARE 
  cols TEXT; 
  dyn_sql TEXT; 
BEGIN 
  SELECT string_agg( 
      format('COALESCE(MAX(CASE WHEN semester = %L THEN count END), 0) AS "%s"', semester, semester), 
      ', ' ) INTO cols 
  FROM (SELECT DISTINCT semester FROM Teaching) s; 
  dyn_sql := format(
      $f$ 
      SELECT role, %s 
      FROM ( SELECT role, semester, COUNT(*) AS count FROM Teaching GROUP BY role, semester ) AS sub 
      GROUP BY role 
      ORDER BY role; 
      $f$, cols); 
      RAISE NOTICE 'Run this SQL: %', dyn_sql; 
END $$;
