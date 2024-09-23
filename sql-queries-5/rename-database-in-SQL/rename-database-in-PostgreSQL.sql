--Terminating Active Connections
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'University';

--Renaming Database
ALTER DATABASE University RENAME TO University1;
