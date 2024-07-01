# SQL Server Setup 

This file contains instructions to set up your local SQL Server database. 

## SQL Server Local Installation


Download and install the SQL Server Express edition: https://www.microsoft.com/en-us/sql-server/sql-server-downloads 
and SQL Server Management Studio: https://learn.microsoft.com/en-gb/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16 
(the script is tested with Sql Server 2022 Express Edition and SSMS 20.1) 

Connect to SSMS, and run the script within university-sqlserver.sql file to create a new database called university. 

The script will drop the database if it exists, then create a new database and tables.

Lastly, copy and run the script in the populate-university-db file to add data to the tables.