SELECT i.indexrelid::regclass AS index_name, 
       array_to_string(array_agg(a.attname), ', ') AS index_columns
FROM pg_index i
JOIN pg_attribute a ON a.attnum = ANY(i.indkey)
WHERE i.indrelid = 'course'::regclass
GROUP BY i.indexrelid;
