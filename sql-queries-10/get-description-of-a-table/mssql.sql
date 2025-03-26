SELECT table_catalog, table_schema, table_name, column_name,
       column_default, is_nullable, data_type
FROM information_schema.columns
WHERE table_name = 'Course';
