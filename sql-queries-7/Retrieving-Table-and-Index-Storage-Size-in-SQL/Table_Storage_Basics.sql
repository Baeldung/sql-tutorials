SELECT 
    table_name,
    table_rows,
    data_length,
    index_length,
    data_length + index_length AS total_length
FROM information_schema.tables
WHERE table_schema = 'University' 
    AND table_name = 'Student';