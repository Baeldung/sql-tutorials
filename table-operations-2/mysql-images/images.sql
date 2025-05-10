-- SQL Script for the article Images in MySQL

-- Change schema to University
USE University;

-- Check max image size you can upload
SHOW VARIABLES LIKE 'max_allowed_packet';
SHOW VARIABLES LIKE 'secure_file_priv';

-- Grant access
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- DIRECT STORAGE

-- Create Tables
CREATE TABLE DepartmentComplete
(
    id INT PRIMARY KEY NOT Null,
    name VARCHAR (50),
    code VARCHAR (4),
    logo BLOB,
    UNIQUE (id)
);

CREATE TABLE StudentComplete
(
    id INT PRIMARY KEY NOT null,
    name VARCHAR (60),
    national_id BIGINT NOT Null, 
    birth_date DATE,
    enrollment_date DATE,
    graduation_date DATE,
    gpa FLOAT,
    profile_pic BLOB,
    UNIQUE (id)
);

-- Adding data for DepartmentComplete 
INSERT INTO DepartmentComplete (id, name, code, logo) VALUES
  (1, 'Computer Science', 'CS', LOAD_FILE('/usr/local/mysql/data/cs_logo.png')),
  (2, 'Electronics and Communications', 'EC', LOAD_FILE('/usr/local/mysql/data/ece_logo.png')),
  (3, 'Social Sciences', 'SS', LOAD_FILE('/usr/local/mysql/data/ss_logo.png')),
  (4, 'Computational Biology', 'CB', LOAD_FILE('/usr/local/mysql/data/cb_logo.png')),
  (5, 'Mathematics', 'MA', LOAD_FILE('/usr/local/mysql/data/ma_logo.png'));

-- Adding data for StudentComplete
INSERT INTO StudentComplete (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa, profile_pic) VALUES
  (1001, 'John Liu', 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4, LOAD_FILE('/usr/local/mysql/data/john_pp.jpeg')),
  (1003, 'Rita Ora', 132345166, '2001-01-14', '2020-01-15', '2024-06-15', 4.2, LOAD_FILE('/usr/local/mysql/data/rita_pp.jpeg')),
  (1007, 'Philip Lose', 321345566, '2001-06-15', '2020-01-15', '2024-06-15', 3.8, LOAD_FILE('/usr/local/mysql/data/philip_pp.jpeg')),
  (1010, 'Samantha Prabhu', 3217165566, '2001-03-21', '2020-01-15', '2024-06-15', 4.9, LOAD_FILE('/usr/local/mysql/data/cs_logo.png')),
  (1011, 'Vikas Jain', 321345662, '2001-7-18', '2020-01-15', NULL, 3.3, LOAD_FILE('/usr/local/mysql/data/vikas_pp.jpeg'));

SELECT * from DepartmentComplete;

SELECT * from StudentComplete;

-- INDIRECT STORAGE
-- Alter Table DepartmentComplete to drop logo
ALTER TABLE DepartmentComplete
DROP COLUMN logo;

-- Alter Table DepartmentComplete to add logo_path
ALTER TABLE DepartmentComplete 
ADD logo_path VARCHAR (256);

-- Alter Table StudentComplete to drop profile_pic
ALTER TABLE StudentComplete
DROP COLUMN profile_pic;

-- Alter Table StudentComplete to add profile_pic_path
ALTER TABLE StudentComplete 
ADD profile_pic_path VARCHAR (256);


-- Update data 
UPDATE DepartmentComplete SET logo_path='/usr/local/mysql/data/cs_logo.png' WHERE code ='CS'; 
UPDATE DepartmentComplete SET logo_path='/usr/local/mysql/data/ece_logo.png' WHERE code ='EC'; 
UPDATE DepartmentComplete SET logo_path='/usr/local/mysql/data/ss_logo.png' WHERE code ='SS'; 
UPDATE DepartmentComplete SET logo_path='/usr/local/mysql/data/cb_logo.png' WHERE code ='CB'; 
UPDATE DepartmentComplete SET logo_path='/usr/local/mysql/data/ma_logo.png' WHERE code ='MA'; 

UPDATE StudentComplete SET profile_pic_path='/usr/local/mysql/data/john_pp.jpeg' WHERE name ='John Liu'; 
UPDATE StudentComplete SET profile_pic_path='/usr/local/mysql/data/rita_pp.jpeg' WHERE name ='Rita Ora'; 
UPDATE StudentComplete SET profile_pic_path='/usr/local/mysql/data/philip_pp.jpeg' WHERE name ='Philip Lose'; 
UPDATE StudentComplete SET profile_pic_path='/usr/local/mysql/data/samantha_pp.jpeg' WHERE name ='Samantha Prabhu'; 
UPDATE StudentComplete SET profile_pic_path='/usr/local/mysql/data/vikas_pp.jpeg' WHERE name ='Vikas Jain'; 

-- END
