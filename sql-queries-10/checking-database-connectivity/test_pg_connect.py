import os
import psycopg2
from dotenv import load_dotenv

# Load environment variables from postgresql.env
load_dotenv("postgresql.env")

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