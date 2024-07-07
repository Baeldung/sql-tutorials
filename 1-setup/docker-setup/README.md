## Set Up
We can set up the required databases and tools using Docker. We support the usage of PostgreSQL, MySQL and SQL Server databases as docker instances. Moreover, there is a docker setup for [Adminer](https://www.adminer.org/), a web-based simple GUI that can connect all these databases.

## Pre-requisites:
- Docker must be installed

## Mode / Profile - Database Setup
This repository provides the setup for two types of modes/profiles. 
- simple : This mode setup a minimal database structure with only three tables in University database. The scripts for tables in this mode is available under the directory [schema/simple](../schema/simple).
- full : This mode setup a full database for University, which include minimum of 9 tables. The scripts for tables in this mode is available under the directory [schema/full](../schema/full).

## How to Use?
The docker configurations are available under the directory `1-setup/docker-setup`. 

### Mode/Profile Variable
By default, the docker setup creates the simple mode which includes minimum number of tables. We can explicitly provide this mode in all the docker commands be prepending `PROFILE=simple` to all docker commands. If no profile variable is set, this uses the simple mode automatically. For full mode, use the variable `PROFILE=full`.

### Running only required database

Depending on the required database, one can switch to the required directory and start the docker instance. 
For example, to run PostgreSQL, use the following commands:
```
cd postgresql
docker compose up
```
This starts the PostgreSQL database in the local docker with the necessary `University` database and tables using the `simple` mode. We can start the postgres in `full` mode by using the command:
```
cd postgresql
PROFILE=full docker compose up
```

To use the Adminer GUI, we can run the docker-compose file inside the directory `adminer-gui`:
```
cd adminer-gui
docker compose up
```
Once this is started, the database client is accessible on http://localhost:8080

Now you can connect to the database by providing the credentials which is available in the respective database `docker-compose.yml` files. 

**NOTE: In Linux machine, use the url `localhost` for the `Server` field. However, in Mac and Windows, we should use `host.docker.internal` as the value for host field.**

### Running all database and GUI

It is also possible to run all three databases and also start the Adminer GUI tool. For it, use the `docker-compose.yml` in the `docker-setup` directory directly:
```
cd docker-setup
docker compose up
```
This starts the databases in `simple` mode. 

To use the `full` profile, use:
```
cd docker-setup
PROFILE=full docker compose up
```

This starts PostgreSQL, MySQL, SQL Server and Adminer GUI in a single command. 

### Using separate GUI
Another way is to start all the databases manually using their on `docker-compose.yml` files. If you have a preferred GUI such as [DB Visualizer](https://www.dbvis.com/), [PG Admin](https://www.pgadmin.org/) or any other, you can use it to connect to the docker databases. In such cases, they can be accessed using `localhost` url with the correct port from respective docker-compose files.