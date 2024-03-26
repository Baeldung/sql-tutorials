#! bin/env bash

### Small script to facilitate importing database schema and data from liquibase, and exporting the dump file
###
### You will need the following command line utilities for this to work:
###
### 1) Liquibase CLI with MySQL Drivers.
### 2) mysqldump to generate the MySQL dump.
###
### Update the username and password to match your MySQL instance.

liquibase update --changelog-file=database-schema.yml \
        --url=jdbc:mysql://localhost:3306/university \
        --username=root \
        --password=password

mysqldump -u root -p university > ./mysql_university_dump.sql
