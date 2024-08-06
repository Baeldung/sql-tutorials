SELECT 
    grantee, 
    table_schema, 
    table_name, 
    privilege_type 
FROM information_schema.role_table_grants 
WHERE grantee IN ('demo_user', 'demo_read_only_user');