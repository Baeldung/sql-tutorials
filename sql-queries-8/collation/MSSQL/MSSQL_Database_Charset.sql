SELECT name, collation_name 
FROM sys.databases 
WHERE name = DB_NAME();
