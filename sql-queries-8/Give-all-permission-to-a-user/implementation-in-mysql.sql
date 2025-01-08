CREATE USER 'dev_user'@'%' IDENTIFIED BY 'password123';

GRANT ALL PRIVILEGES ON University.* TO 'dev_user'@'%';

SELECT GRANTEE, PRIVILEGE_TYPE 
FROM information_schema.user_privileges 
WHERE GRANTEE = "'dev_user'@'%'";

SHOW GRANTS FOR 'dev_user'@'%';