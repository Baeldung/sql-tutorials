# Dumps

This directory contains dumps that can be used to instantiate your local database without any additional tooling.

The commands that reference a database name (always `university`) assume that this database has already been created.

# MySQL

Use the `mysql_university_dump.sql` dump file.

Adjust the command to match your connection strings:
```bash
mysql -u username -p university < mysql_university_dump.sql
```

# PostgreSQL

Use the `postgres_university_dump.sql` dump file.

Adjust the command to match your connection strings:
```bash
psql -U username -d university -f postgres_university_dump.sql
```

# SQL Server

Use the `sql_server_university_dump.sql` backup file.

Adjust the command to match your connection strings:
```bash
sqlcmd -S server_name -U username -P password -d university -i sql_server_university_dump.sql
```

# Oracle DB

TBD.
