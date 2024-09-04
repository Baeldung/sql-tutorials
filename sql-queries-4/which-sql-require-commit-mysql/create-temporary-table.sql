START TRANSACTION; -- Start a transaction

/* Create a temporary table */
CREATE TEMPORARY TABLE tbl1 
  SELECT * 
  FROM Department;

DROP TEMPORARY TABLE tbl1; -- Drop temporary table

COMMIT; --Commit transaction
