#!/bin/bash

# MySQL Database Connectivity Check Script

# Load environment variables
source mysql.env

echo "Testing MySQL connectivity..."

# Test MySQL connectivity and check for 'Department' table
mysql -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" -p"$MYSQL_PASS" -e "USE $MYSQL_DB; SHOW TABLES LIKE 'Department';" >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "MySQL: Connection successful and department table exists."
else
  echo "MySQL: Connection failed or department table does not exist."
fi
