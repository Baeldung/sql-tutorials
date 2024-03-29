#! bin/env bash

### Small script to facilitate importing database schema and data from liquibase, and exporting the dump file
###
### You will need the following command line utilities for this to work:
###
### 1) Liquibase CLI (with SQL Server Drivers?).
### 2) SQL_SERVER to generate the SQL Server dump.
###
### Update the username and password to match your SQL Server instance.

liquibase update --changelog-file=database-schema.yml \
        --url="jdbc:sqlserver://localhost:1433;encrypt=false;databaseName=university;" \
        --username=sa \
        --password=Password1

# We can create a backup file of the database, but this isn't quite the same as a dump?
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Password1 -d university -Q "BACKUP DATABASE [university] TO DISK='sql_server_university_dump.sql'"
