#! bin/env bash

### Small script to facilitate importing database schema and data from liquibase, and exporting the dump file
###
### You will need the following command line utilities for this to work:
###
### 1) Liquibase CLI (Postgres Drivers are included by default).
### 2) pg_dump to generate the PostgreSQL dump.
###
### Update the username and password to match your PostgreSQL instance.

liquibase update --changelog-file=database-schema.yml \
        --url=jdbc:postgresql://localhost:5432/university \
        --username=postgres \
        --password=password

pg_dump -U postgres -h localhost -p 5432 university > ./postgres_university_dump.sql
