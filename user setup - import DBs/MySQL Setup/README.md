# MySQL Setup 

This file contains instructions to set up your local MySQL database. 

## MySQL Install

Download and install the MySQL Community Server and MySQL Workbench: https://dev.mysql.com/downloads/ After connecting to the MySQL Workbench, create a new database called 'university'.

Use the `mysql_university_dump.sql` dump file to import the database dump into your new database.

Adjust the command to match your connection strings:
```bash
mysql -u username -p university < mysql_university_dump.sql
```

