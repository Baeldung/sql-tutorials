-- Change schema to University
USE University;

--session 1 
BEGIN TRAN; 
UPDATE Course 
SET credits = 8 
WHERE id = 'CS111';

--session 2
BEGIN TRAN; 
UPDATE Course 
SET credits = 9 
WHERE id = 'CS111';

--session 3
EXEC sp_who2;

--session 4
SELECT
    blocked.session_id,
    blocked.status,
    blocked.wait_type,
    blocked.wait_time,
    blocking.session_id AS blocking_session_id,
    blocking.status AS blocking_status,
    blocking.login_name AS blocking_login,
    blocked.command,
    DB_NAME(blocked.database_id) AS blocked_database_name,
    blocked_sql.text AS blocked_query_text,
    blocking_sql.text AS blocking_query_text
FROM sys.dm_exec_requests AS blocked
INNER JOIN sys.dm_exec_sessions AS blocking ON blocked.blocking_session_id = blocking.session_id
LEFT JOIN sys.dm_exec_connections AS conn_blocked ON blocked.session_id = conn_blocked.session_id
LEFT JOIN sys.dm_exec_connections AS conn_blocking ON blocked.blocking_session_id = conn_blocking.session_id
OUTER APPLY sys.dm_exec_sql_text(conn_blocked.most_recent_sql_handle) AS blocked_sql
OUTER APPLY sys.dm_exec_sql_text(conn_blocking.most_recent_sql_handle) AS blocking_sql
WHERE blocked.blocking_session_id <> 0;

--Replace 56 by the id of your first session
KILL 56;

--session 2
-- Once done with experiments, ROLLBACK session 2
ROLLBACK TRAN;