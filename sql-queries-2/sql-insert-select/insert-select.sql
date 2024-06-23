SELECT * 
  FROM Empinfo;

CREATE TABLE New_empinfo (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);

INSERT INTO New_empinfo 
  SELECT * 
  FROM Empinfo;

INSERT INTO New_empinfo 
  SELECT * 
  FROM Empinfo 
  WHERE department='HR';

SELECT * 
  FROM New_empinfo;

INSERT INTO New_empinfo 
  SELECT * 
  FROM Empinfo 
  WHERE department='HR' OR department ='Finance' ;
