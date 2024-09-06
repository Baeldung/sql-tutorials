SET autocommit=1; --Turns on automatic transaction mode

CREATE TABLE Department
(
    id INT PRIMARY KEY NOT Null,
    name VARCHAR (50),
    code VARCHAR (4),
    UNIQUE (id)
); -- Runs in a separate transaction

SELECT SELECT * FROM DEPARTMENT; --Runs in a separate transaction

INSERT INTO Department VALUES(6,'Data Science','DS'); --Runs in a separate transaction
