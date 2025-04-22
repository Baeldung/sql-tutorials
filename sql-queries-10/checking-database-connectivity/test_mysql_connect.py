import os
import mysql.connector
from dotenv import load_dotenv

# Load environment variables from mysql.env
load_dotenv("mysql.env")

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