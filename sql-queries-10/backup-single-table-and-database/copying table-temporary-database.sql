CREATE DATABASE TempBackupDB;

USE TempBackupDB; 
SELECT * INTO Students FROM university.dbo.Student;

BACKUP DATABASE TempBackupDB TO DISK = 'C:\Backup\TempBackupDB.bak';