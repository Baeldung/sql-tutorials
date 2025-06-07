CREATE DATABASE University_myisam DEFAULT CHARACTER SET=utf8;  

USE University_myisam;

CREATE TABLE Department
(
    id INT PRIMARY KEY NOT Null,
    name VARCHAR (50),
    code VARCHAR (4),
    UNIQUE (id)
) ENGINE MyISAM;


CREATE TABLE Program
(
    id INT PRIMARY KEY NOT Null,
    name VARCHAR (50),
    description VARCHAR (250),
    start_date DATE,
    end_date DATE,
    type VARCHAR (20),
    department_id INT,
    CONSTRAINT program_department_id_fkey FOREIGN KEY(department_id) REFERENCES Department(id),
    UNIQUE (id)
) ENGINE MyISAM;


CREATE TABLE Student
(
    id INT PRIMARY KEY NOT null,
    name VARCHAR (60),
    national_id BIGINT NOT Null, 
    birth_date DATE,
    enrollment_date DATE,
    graduation_date DATE,
    gpa FLOAT,
    UNIQUE (id)
) ENGINE MyISAM;



CREATE TABLE Faculty
(
    id INT PRIMARY KEY NOT Null,
    name VARCHAR (60),
    national_id BIGINT NOT Null,
    position VARCHAR (30),
    start_date DATE,
    end_date DATE,
    department_id INT,
    active BOOLEAN DEFAULT true,
    CONSTRAINT faculty_department_id_fkey FOREIGN KEY(department_id) REFERENCES Department(id),
    UNIQUE (id)
) ENGINE MyISAM;


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
) ENGINE MyISAM;


CREATE TABLE Teaching
( 
    id INT PRIMARY KEY NOT Null,
    role VARCHAR(60),
    semester VARCHAR(30),
    year INT,
    course_id VARCHAR (10),
    faculty_id INT,
    CONSTRAINT teaching_course_id_fkey FOREIGN KEY(course_id) REFERENCES Course(id),
    CONSTRAINT teaching_faculty_id_fkey FOREIGN KEY(faculty_id) REFERENCES Faculty(id),
    UNIQUE (id)
) ENGINE MyISAM;


CREATE TABLE Specification
(
    id INT PRIMARY KEY NOT Null,
    status VARCHAR (20),
    course_id VARCHAR (10),
    program_id INT,
    CONSTRAINT specification_course_id_fkey FOREIGN KEY(course_id) REFERENCES Course(id),
    CONSTRAINT specification_program_id_fkey FOREIGN KEY(program_id) REFERENCES Program(id),
    UNIQUE (id)
) ENGINE MyISAM;



CREATE TABLE Prerequisite
(
    id INT PRIMARY KEY NOT Null,
    course_id VARCHAR (10),
    prerequisite_id VARCHAR (10) not null,
    CONSTRAINT prerequisite_course_id_fkey FOREIGN KEY(course_id) REFERENCES Course(id),
    CONSTRAINT prerequisite_prerequisite_id_fkey FOREIGN KEY(prerequisite_id) REFERENCES Course(id),
    UNIQUE (id)
) ENGINE MyISAM;


CREATE Table Registration
(
    id INT PRIMARY KEY NOT Null,
    semester VARCHAR(30),
    year INT,
    reg_datetime DATETIME,
    course_id VARCHAR (10),
    student_id INT,
    CONSTRAINT registration_course_id_fkey FOREIGN KEY(course_id) REFERENCES Course(id),
    CONSTRAINT registration_student_id_fkey FOREIGN KEY(student_id) REFERENCES Student(id),
    UNIQUE (id)
) ENGINE MyISAM;


CREATE TABLE Exam
(
    id INT PRIMARY KEY NOT Null,
    semester VARCHAR(30),
    exam_date DATE,
    grade VARCHAR(2),
    course_id VARCHAR (10),
    student_id INT,
    CONSTRAINT exam_student_id_fkey FOREIGN KEY(student_id) REFERENCES Student(id),
    CONSTRAINT exam_course_id_fkey FOREIGN KEY(course_id) REFERENCES Course(id),
    UNIQUE (id)
) ENGINE MyISAM;
