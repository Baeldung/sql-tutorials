#!/bin/bash

# PostgreSQL Database Connectivity Check Script

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