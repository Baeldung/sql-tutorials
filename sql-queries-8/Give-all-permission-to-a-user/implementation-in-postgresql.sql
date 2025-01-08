CREATE USER dev_user WITH PASSWORD 'password123';

SELECT grantee, privilege_type, table_schema, table_name 
FROM information_schema.role_table_grants 
WHERE grantee = 'dev_user';

GRANT CONNECT ON DATABASE university TO dev_user;

GRANT USAGE ON SCHEMA public TO dev_user; 
GRANT CREATE ON SCHEMA public TO dev_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO dev_user;

GRANT USAGE, SELECT, UPDATE ON ALL SEQUENCES IN SCHEMA public TO dev_user; 
ALTER DEFAULT PRIVILEGES IN SCHEMA public 
GRANT USAGE, SELECT, UPDATE ON SEQUENCES TO dev_user;

SELECT grantee, privilege_type, table_schema, table_name 
FROM information_schema.role_table_grants 
WHERE grantee = 'dev_user';

select * from student limit 3;

