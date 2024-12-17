--Terminating all active connections except the current session
SELECT pg_terminate_backend(pid) 
  FROM pg_stat_activity
  WHERE datname = 'University' AND pid <> pg_backend_pid();


--Limiting database to allow only one connection (single-user mode)
ALTER DATABASE University WITH CONNECTION LIMIT 1;

-- Reverting database to allow multiple connections (multi-user mode)
ALTER DATABASE University WITH CONNECTION LIMIT -1;
