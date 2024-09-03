/* Use one of the SELECT statements. */
SELECT @@autocommit;
SELECT @@SESSION.autocommit;
SELECT @@LOCAL.autocommit;

/* Use one of the SHOW VARIABLES statements. */
SHOW VARIABLES LIKE 'autocommit';  
SHOW SESSION VARIABLES LIKE 'autocommit'

/* Query the perfrmance_schema */
SELECT * 
FROM performance_schema.session_variables
WHERE VARIABLE_NAME = 'autocommit';
