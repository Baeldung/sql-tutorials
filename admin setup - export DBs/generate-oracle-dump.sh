#! bin/env bash

### Small script to facilitate importing database schema and data from liquibase, and exporting the dump file
###
### You will need the following command line utilities for this to work:
###
### 1) Liquibase CLI (Oracle Setup?).
### 2) ___ to generate the Oracle dump.
###
### Update the username and password to match your Oracle DB instance.

liquibase update --changelog-file=database-schema.yml \
        --url=jdbc:oracle:thin:@localhost:1521:FREE \
        --username=SYSTEM \
        --password=password \
        --default-schema-name=PUBLIC

ORACLE_DUMP_CMD -u root -p university > ./oracle_university_dump.sql
