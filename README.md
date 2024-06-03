This project contains SQL files that support the tutorials on https://www.baeldung.com/sql/ 

To setup the database on your local system, **go to the folder "1-setup"**, then select the file for the respective database technology. The database scripts to create database and tables are available inside the setup folder.


## Set Up
We can set up the required databases and tools using Docker. We support the usage of PostgreSQL, MySQL and SQL Server databases as docker instances. Moreover, there is a docker setup for [Adminer](https://www.adminer.org/), a web-based simple GUI that can connect all these databases.

### Pre-requisites:
- Docker must be installed

## How to Use?
The setup scripts are placed under the directory `1-setup`. The docker configurations are available under the directory `1-setup/docker-setup`. Depending on the required database, one can switch to the required directory and start the docker instance. 
For example, to run PostgreSQL, use the following commands:
```
cd postgresql
docker-compose up
```
This starts the PostgreSQL database in the local docker with the necessary `University` database and tables.

To use the Adminer GUI, we can run the docker-compose file inside the directory `adminer-gui`:
```
cd adminer-gui
docker-compose up
```
Once this is started, the database client is accessible on http://localhost:8080

Now you can connect to the database by providing the credentials which is available in the respective database `docker-compose.yml` files. 

**NOTE: In Linux machine, use the url `localhost` for the `Server` field. However, in Mac and Windows, we should use `host.docker.internal` as the value for host field.**