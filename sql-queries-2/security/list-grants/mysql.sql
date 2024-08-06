SELECT 
    grantee, 
    table_schema, 
    table_name, 
    privilege_type
FROM information_schema.TABLE_PRIVILEGES 
WHERE grantee = "'demo_user'@'localhost'"