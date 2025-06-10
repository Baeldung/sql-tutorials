--Listing all active connections to the database
SHOW PROCESSLIST; 

--Terminating active connections
KILL <session_id>; 

--Limiting database to allow only one connection (single-user mode)
SET GLOBAL max_connections = 1;

--Reverting database to allow multiple connections (multi-user mode)
SET GLOBAL max_connections = 151;
