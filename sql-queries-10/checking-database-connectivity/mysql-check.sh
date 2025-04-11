#!/bin/bash

# MySQL Database Connectivity Check Script

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    cat > .env <<EOF
# MySQL Configuration
MYSQL_HOST="localhost"
MYSQL_PORT="3306"
MYSQL_USER="root"
MYSQL_PASS="MySQL!2024"
MYSQL_DB="University"
EOF
    echo "Created .env file with MySQL configuration"
fi

# Load environment variables
source .env

echo "Testing MySQL connectivity..."

# Test MySQL connectivity and check for 'Department' table
mysql -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" -p"$MYSQL_PASS" -e "USE $MYSQL_DB; SHOW TABLES LIKE 'Department';" >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "MySQL: Connection successful and department table exists."
else
  echo "MySQL: Connection failed or department table does not exist."
fi