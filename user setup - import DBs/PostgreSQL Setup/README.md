# MySQL Setup 

This file contains instructions to set up your local PostgreSQL database. 

## Postgres Install

Download and install PostgreSQL: https://www.postgresql.org/download/ and the pgAdmin management tool: https://www.pgadmin.org/download/

Connect to the pgAdmin tool and create a new database called 'university'.

Use the `postgres_university_dump.sql` dump file to import the database dump into your new database.

Adjust the command to match your connection strings:
```bash
psql -U username -d university -f postgres_university_dump.sql

```

