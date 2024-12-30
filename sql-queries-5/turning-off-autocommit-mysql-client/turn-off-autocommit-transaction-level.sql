START TRANSACTION; -- This statement automatically turns off the autocommit mode

SELECT THREAD_ID, 
STATE, 
TRX_ID, 
ACCESS_MODE,
ISOLATION_LEVEL, 
AUTOCOMMIT FROM
performance_schema.events_transactions_current; -- This statement can be used to find the autocommit mode in an active transaction

SELECT * 
FROM DEPARTMENT;

COMMIT; --This statement ends the transaction
