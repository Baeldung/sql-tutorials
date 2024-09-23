CREATE TABLE DEPARTMENT_copy 
AS SELECT * 
FROM DEPARTMENT; --Create a new table as a copy of the DEPARTMENT table

SELECT * 
FROM DEPARTMENT_copy 
WHERE code = (SELECT code FROM DEPARTMENT WHERE id=5) 
FOR UPDATE; --Run a locking SELECT query on the DEPARTMENT table with a plain SELECT query as a sub-query
