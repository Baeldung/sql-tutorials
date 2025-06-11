SELECT version();

show server_version;

SELECT * 
FROM pg_config
WHERE name = 'VERSION';
