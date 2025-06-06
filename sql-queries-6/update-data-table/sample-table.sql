CREATE TABLE New_Department
(
id INT PRIMARY KEY NOT Null,
name VARCHAR (50),
code VARCHAR (4),
UNIQUE (id)
);

INSERT INTO New_Department (id, name, code) VALUES
(1, 'Telecom Engineering', 'TE'),
(2, 'Electronics and Communications', 'EC'),
(3, 'Mechatronics Engineering', 'MET'),
(4, 'Civil Engineering', 'CE'),
(5, 'Software Engineering', 'SE');
