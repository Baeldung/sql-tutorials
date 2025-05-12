--get oid using pg_class
SELECT oid, relname 
  FROM pg_class
  WHERE relname = 'student';

--get oid using pg_catalog.pg_class with pg_catalog.pg_namespace
SELECT c.oid, n.nspname AS schema_name, c.relname AS table_name 
  FROM pg_catalog.pg_class c 
  JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace 
  WHERE c.relname = 'student' AND n.nspname = 'public';

--get oid using pg_table_is_visible() and pg_class
SELECT c.oid, c.relname AS table_name 
  FROM pg_class c 
  WHERE c.relname = 'student' AND pg_table_is_visible(c.oid);

--get oid using regclass cast
SELECT 'public.student'::regclass::oid;

--Listing OIDs of All Tables
SELECT c.oid, n.nspname AS schema_name, c.relname AS table_name 
  FROM pg_class c 
  JOIN pg_namespace n ON n.oid = c.relnamespace 
  WHERE c.relkind = 'r';
