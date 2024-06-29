SELECT * 
  FROM Department;

SELECT * 
  FROM Faculty;

CREATE TABLE Department_faculties
(
    id INT PRIMARY KEY NOT Null,
    name VARCHAR (50),
    position VARCHAR (50),
    department_name VARCHAR (50),
    department_code VARCHAR (4),
    UNIQUE (id)
);

INSERT INTO Department_faculties(id, name, position, department_name, department_code) 
  SELECT fac.id, fac.name, fac.position, dep.name, dep.code 
  FROM Department dep 
  INNER JOIN Faculty fac 
  ON fac.department_id = dep.id;

SELECT * 
  FROM Department_faculties;
