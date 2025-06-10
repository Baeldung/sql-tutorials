IF NOT EXISTS ( 
    SELECT 1 
    FROM sys.database_principals 
    WHERE name = 'index_maintenance' AND type = 'R' 
) 
BEGIN 
  CREATE ROLE index_maintenance; 
END 
GO 

GRANT ALTER ON OBJECT::dbo.Teaching TO index_maintenance; 
GO
