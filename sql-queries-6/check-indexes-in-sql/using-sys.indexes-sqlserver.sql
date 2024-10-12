SELECT name AS index_name, type_desc, is_unique, is_primary_key 
FROM sys.indexes 
WHERE object_id = OBJECT_ID('Course')