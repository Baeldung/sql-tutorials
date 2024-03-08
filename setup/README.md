# SQL Setup
> The contents of this directory are liquibase schema setup files,
> sample data for this project, and scripts to assist in generating dump files for each database technology.

# Installing

Follow the steps on the [Liquibase Docs for your OS](https://docs.liquibase.com/start/install/home.html) to get the core CLI.

Here's the current current matrix of databases Baeldung is targeting:

| Database   | Liquibase Support                       |
|------------|-----------------------------------------|
| MySQL      | Supported, but must manually add driver |
| PostgreSQL | Out of the Box                          |
| Oracle     | Possible support out of the box?        |
| SQL Server | Out of the Box According to Docs        |

# Generating Dumps

Each database was run in docker, and used the provided tooling within the docker container to extract the dump.
The scripts each contain a liquibase command and a dump generation command.

# MySQL

## Liquibase Setup

To use Liquibase with MySQL, you must add the MySQL driver (jar file) in the liquibase installation directory, `./liquibase/lib`.

Download the platform independent archive from [the official downloads page](https://dev.mysql.com/downloads/connector/j/), unzip it, and grab the jar file.

# PostgreSQL

Liquibase works with postgres out of the box.

# Oracle DB

Supposedly Liquibase should work with Oracle DB out of the box, initial attempts were made with this free version of their container [here](https://container-registry.oracle.com/ords/f?p=113:4:101629893045627:::RP,4:P4_REPOSITORY,AI_REPOSITORY,P4_REPOSITORY_NAME,AI_REPOSITORY_NAME:1863,1863,Oracle%20Database%20Free,Oracle%20Database%20Free&cs=3twiMjqN3EOSBKzXHBgMMaAo2j4hCTCd2AQ1jFYpQV7qHYFJmydU4adDMtYETB3n43WxXP7fuLAAbU2ZSD7hLsg),
but all attempts to connect to the database and import the schema and data were unsuccessful.

# SQL Server

Liquibase works with SQL Server out of the box.
