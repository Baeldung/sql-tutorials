SELECT
    dp.class_desc AS object_type,
    OBJECT_NAME(dp.major_id) AS object_name,
    USER_NAME(dp.grantee_principal_id) AS grantee,
    dp.permission_name, dp.state_desc
FROM sys.database_permissions dp
WHERE USER_NAME(dp.grantee_principal_id) IN ('demo_user', 'demo_read_only_user');