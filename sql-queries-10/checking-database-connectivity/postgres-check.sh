#!/bin/bash

# PostgreSQL Database Connectivity Check Script

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    cat > .env <<EOF
DB_HOST="localhost"
DB_PORT="5432"
DB_USER="user"
DB_PASS="Password!2024"
DB_NAME="University"
EOF
    echo "Created .env file with PostgreSQL configuration"
fi

# Load environment variables
source .env

echo "Testing PostgreSQL connectivity..."

# Test PostgreSQL connectivity and check for 'student' table
PGPASSWORD="$DB_PASS" psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -c '\dt student' >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "PostgreSQL: Connection successful and student table exists."
else
  echo "PostgreSQL: Connection failed or student table does not exist."
fi