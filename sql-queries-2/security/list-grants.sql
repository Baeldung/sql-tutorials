-- mysql
SELECT 
    grantee, 
    table_schema, 
    table_name, 
    privilege_type
FROM information_schema.TABLE_PRIVILEGES 
WHERE grantee = "'demo_user'@'localhost'"

-- postgresql
SELECT 
    grantee, 
    table_schema, 
    table_name, 
    privilege_type 
FROM information_schema.role_table_grants 
WHERE grantee = 'demo_user';

-- SQL Server
SELECT
    dp.class_desc AS object_type,
    OBJECT_NAME(dp.major_id) AS object_name,
    USER_NAME(dp.grantee_principal_id) AS grantee,
    dp.permission_name, dp.state_desc
FROM sys.database_permissions dp
WHERE USER_NAME(dp.grantee_principal_id) = 'demo_user';