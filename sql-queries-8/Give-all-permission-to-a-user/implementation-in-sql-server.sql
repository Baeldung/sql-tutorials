CREATE LOGIN Dev_login WITH PASSWORD = 'Password123!'; 
CREATE USER dev_user FOR LOGIN dev_login;

GRANT SELECT, INSERT, UPDATE, DELETE ON DATABASE::University TO dev_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN DATABASE TO dev_user;

SELECT grantee_principal_id, class, class_desc, permission_name, state_desc 
FROM sys.database_permissions 
WHERE grantee_principal_id = USER_ID('dev_user');

SELECT * FROM student;