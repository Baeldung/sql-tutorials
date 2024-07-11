-- SQL script to create DB, and tables. Then insert data in each table
-- Run these 2 statements in a separate query
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'University')
BEGIN
    CREATE DATABASE University;
END
GO

-- Change schema to University
USE University;

-- Create Tables

CREATE TABLE Department
(
    id INT PRIMARY KEY NOT Null,
    name VARCHAR (50),
    code VARCHAR (4),
    UNIQUE (id)
);

CREATE TABLE Student
(
    id INT PRIMARY KEY NOT null,
    name VARCHAR (60),
    national_id BIGINT NOT Null, 
    birth_date DATE,
    enrollment_date DATE,
    graduation_date DATE,
    gpa FLOAT(4),
    UNIQUE (id)
);

CREATE TABLE Course
(
    id VARCHAR (10) PRIMARY KEY NOT Null,
    name VARCHAR(60),
    textbook VARCHAR(100),
    credits INT,
    is_active VARCHAR(10),
    department_id INT,
    CONSTRAINT course_department_id_fkey FOREIGN KEY(department_id) REFERENCES Department(id),
    UNIQUE (id)
);
