--Creating New Database
CREATE DATABASE New_University; 

--Moving All Tables to the New Database
RENAME TABLE University.Department TO New_University.Department, 
University.Student TO New_University.Student, 
University.Course TO New_University.Course;


--Dropping Old Database
DROP DATABASE University;

--exporting database file Using mysqldump utility
mysqldump -u root -p University > university_backup.sql

--Importing database file to the newly created database
mysql -u root -p New_University < university_backup.sql
