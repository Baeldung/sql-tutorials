SELECT 
    grantee, 
    table_schema, 
    table_name, 
    privilege_type
FROM information_schema.TABLE_PRIVILEGES 
WHERE grantee IN ("'demo_user'@'localhost'", "'demo_read_only_user'@'localhost'")