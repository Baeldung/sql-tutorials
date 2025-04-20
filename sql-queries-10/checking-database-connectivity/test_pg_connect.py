#!/bin/bash

# Python Database Connectivity Check Script

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "Python 3 is not installed. Please install Python 3 first."
    exit 1
fi

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    cat > .env <<EOF
# PostgreSQL Configuration
DB_HOST="localhost"
DB_PORT="5432"
DB_USER="user"
DB_PASS="Password!2024"
DB_NAME="University"

# MySQL Configuration
MYSQL_HOST="localhost"
MYSQL_PORT="3306"
MYSQL_USER="root"
MYSQL_PASS="MySQL!2024"
MYSQL_DB="University"
EOF
    echo "Created .env file with database configurations"
fi

# Install required Python packages
echo "Installing required Python packages..."
pip install psycopg2-binary mysql-connector-python python-dotenv > /dev/null 2>&1

# Create PostgreSQL test script
cat > test_pg_connect.py <<EOF
import os
import psycopg2
from dotenv import load_dotenv

# Load environment variables from .env
load_dotenv()

DB_HOST = os.getenv("DB_HOST")
DB_PORT = os.getenv("DB_PORT")
DB_NAME = os.getenv("DB_NAME")
DB_USER = os.getenv("DB_USER")
DB_PASS = os.getenv("DB_PASS")

try:
    connection = psycopg2.connect(
        host=DB_HOST,
        port=DB_PORT,
        dbname=DB_NAME,
        user=DB_USER,
        password=DB_PASS
    )

    cursor = connection.cursor()
    cursor.execute("SELECT to_regclass('public.student');")
    table_exists = cursor.fetchone()[0]

    if table_exists:
        print("PostgreSQL: Connection successful and student table exists.")
    else:
        print("PostgreSQL: Connection successful but student table does not exist.")

except Exception as e:
    print(f"PostgreSQL: Connection failed - {e}")

finally:
    if 'connection' in locals():
        connection.close()
EOF

# Create MySQL test script
cat > test_mysql_connect.py <<EOF
import os
import mysql.connector
from dotenv import load_dotenv

# Load environment variables from .env
load_dotenv()

MYSQL_HOST = os.getenv("MYSQL_HOST")
MYSQL_PORT = os.getenv("MYSQL_PORT")
MYSQL_USER = os.getenv("MYSQL_USER")
MYSQL_PASS = os.getenv("MYSQL_PASS")
MYSQL_DB = os.getenv("MYSQL_DB")

try:
    connection = mysql.connector.connect(
        host=MYSQL_HOST,
        port=MYSQL_PORT,
        user=MYSQL_USER,
        password=MYSQL_PASS,
        database=MYSQL_DB
    )

    cursor = connection.cursor()
    cursor.execute("SHOW TABLES LIKE 'Department';")
    result = cursor.fetchone()

    if result:
        print("MySQL: Connection successful and department table exists.")
    else:
        print("MySQL: Connection successful but department table does not exist.")

except mysql.connector.Error as err:
    print(f"MySQL: Connection failed - {err}")

finally:
    if 'connection' in locals() and connection.is_connected():
        connection.close()
EOF

# Run the Python tests
echo "Running PostgreSQL test..."
python3 test_pg_connect.py

echo "Running MySQL test..."
python3 test_mysql_connect.py