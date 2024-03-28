# SQL Server Setup 

This file contains instructions to set up your local SQL Server database. 

## SQL Server Local Installation

Download and install the MySQL Community Server and MySQL Workbench: https://dev.mysql.com/downloads/ After connecting to the MySQL Workbench, create a new database called 'university'.

Use the `sql_server_university_dump.sql` dump file to import the database dump into your new database.

Adjust the command to match your connection strings:
```bash
sqlcmd -S server_name -U username -P password -d university -i sql_server_university_dump.sql
```

