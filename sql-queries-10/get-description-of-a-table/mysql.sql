SELECT table_schema, table_name, column_name, column_default,
       is_nullable, data_type, column_type, privileges
FROM information_schema.columns
WHERE table_name = 'Course';
