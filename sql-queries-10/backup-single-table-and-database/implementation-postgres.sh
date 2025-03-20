pg_dump -h localhost -p 5432 -U user -d university -t student -f student_backup.sql

cat student_backup.sql