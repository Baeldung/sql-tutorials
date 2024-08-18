/* SET search_path to University -- or how the University schema was named during creation */

CREATE TABLE Active_courses AS 
SELECT * FROM Course 
WHERE is_active = 'Yes';

SELECT tablename
FROM pg_catalog.pg_tables
WHERE schemaname = 'public';

DROP TABLE IF EXISTS Active_courses;

SELECT tablename
FROM pg_catalog.pg_tables
WHERE schemaname = 'public';

DROP TABLE IF EXISTS Active_courses;
