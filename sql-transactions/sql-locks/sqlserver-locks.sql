-- Change schema to University
USE University;

--Shared Lock (S) 

--Session 1
-- Set the isolation level to REPEATABLE READ to hold shared locks until commit/rollback
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

BEGIN TRAN;
SELECT id, name, credits 
FROM Course 
WHERE id='CS111';

--Check the locks held by this session:
SELECT request_session_id, resource_type, request_mode 
FROM sys.dm_tran_locks
WHERE request_session_id = @@SPID
AND resource_type = 'KEY';

--Commit later
COMMIT TRAN;

--Session 2
SELECT id, name, credits 
FROM Course 
WHERE id='CS111';

BEGIN TRAN;

UPDATE Course
SET credits = 8
WHERE id='CS111';

ROLLBACK TRAN;

--Sesion 3
SELECT
    session_id,
    blocking_session_id,
    command,
    status
FROM sys.dm_exec_requests
CROSS APPLY sys.dm_exec_sql_text(sql_handle)
WHERE blocking_session_id <> 0;

--EXEC sp_who2;

--Exclusive Lock (X) 

--Session 1

-- Set the isolation level to REPEATABLE READ to hold shared locks until commit/rollback
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

BEGIN TRAN;
UPDATE Course
SET credits = 8
WHERE id='CS111';

--Check the locks held by this session:
SELECT request_session_id, resource_type, request_mode
FROM sys.dm_tran_locks
WHERE request_session_id = @@SPID;

--Rollback later
ROLLBACK TRAN;

--Session 2
BEGIN TRAN;
SELECT id, name, credits 
FROM Course 
WHERE id='CS111';

COMMIT TRAN;


--Update Lock (U) 

--Session 1
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

BEGIN TRAN;
SELECT id, name, credits 
FROM Course
WITH (UPDLOCK) 
WHERE id='CS111';

--Check the locks held by this session:
SELECT request_session_id, resource_type, request_mode 
FROM sys.dm_tran_locks
WHERE request_session_id = @@SPID;

--Session 2
SELECT id, name, credits 
FROM Course
WHERE id='CS111';

UPDATE Course
SET credits = 8
WHERE id='CS111';

--Shared with Intent Exclusive (SIX)

--Session 1
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

BEGIN TRAN;

-- Explicitly request a SIX lock:
SELECT id, name, credits 
FROM Course
WITH (TABLOCKX, HOLDLOCK)
WHERE id='CS111';

UPDATE Course
SET credits = 8
WHERE id='CS111';

--Rollback later
ROLLBACK TRAN;

SELECT request_session_id, resource_type, request_mode 
FROM sys.dm_tran_locks
WHERE request_session_id = @@SPID;

--Session 2
BEGIN TRAN;

SELECT * 
FROM Course
WHERE id='CS111';

COMMIT TRAN;