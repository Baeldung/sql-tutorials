pip install mssql-scripter

mssql-scripter -S localhost -d university -U user -P password --script-create --script-data --include-objects student --output-file student_backup.sql

cat student_backup.sql