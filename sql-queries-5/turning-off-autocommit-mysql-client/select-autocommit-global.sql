/* Use one of the statements to find the global scoped setting for autocommit system variable */

SELECT @@GLOBAL.autocommit;

SHOW GLOBAL VARIABLES LIKE 'autocommit';

SELECT * 
FROM performance_schema.global_variables
WHERE VARIABLE_NAME = 'autocommit';
