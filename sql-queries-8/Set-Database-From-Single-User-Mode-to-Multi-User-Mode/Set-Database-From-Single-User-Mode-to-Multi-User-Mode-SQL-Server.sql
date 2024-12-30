-- checking the database mode 
SELECT DATABASEPROPERTYEX('University', 'UserAccess') AS UserAccessMode;

-- Converting database to multi-user mode
ALTER DATABASE University SET MULTI_USER;
