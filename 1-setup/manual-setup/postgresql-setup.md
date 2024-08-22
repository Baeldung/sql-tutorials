# PostgreSQL Setup 

This file contains instructions to set up your local PostgreSQL database. 

## Postgres Install

Download and install PostgreSQL: https://www.postgresql.org/download/ and the pgAdmin management tool: https://www.pgadmin.org/download/
(the script is tested with version PostgreSQL v 16.2 and pgAdmin 4 v 8.5) 

Open the pgAdmin tool and connect to the server with your credentials. Then open a new query and run the script in the university-postgresql.sql file as follows:
- first, run the DROP DATABASE statement by itself (otherwise it will show an error)
- copy and run the CREATE DATABASE statement by itself
- copy and run the rest of the script to create the tables.

Lastly, copy and run the script in the populate-university-db file to add data to the tables.



