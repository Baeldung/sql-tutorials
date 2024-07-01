CREATE TABLE employee (
    emp_id INT,
    first_name VARCHAR(128),
    last_name VARCHAR(128),
    email VARCHAR(128),
    office_location VARCHAR(128)
);

-- insert all unique records
INSERT INTO
    employee (emp_id, first_name, last_name, email, office_location)
VALUES
    (1, 'John', 'Doe', 'john.doe@baeldung.com', 'New York'),
    (2, 'Tom', 'Fisk', 'tom.fisk@baeldung.com', 'Palo Alto'),
    (3, 'Linda', 'Miller', 'linda.miller@baeldung.com', 'Chicago'),
    (4, 'Jessica', 'Williams', 'jessica.williams@baeldung.com', 'Palo Alto');

-- insert records with one duplicated column
INSERT INTO
    employee (emp_id, first_name, last_name, email, office_location)
VALUES
    (1, 'Emma', 'Jackson', 'emma.jackson@baeldung.com', 'Austin'),
    (3, 'Donald', 'Smith', 'donald.smith@baeldung.com', 'Seattle'),
    (4, 'Olivia', 'Davis', 'olivia.davis@baeldung.com', 'Boston');

-- insert records with multiple duplicated columns
INSERT INTO
    employee (emp_id, first_name, last_name, email, office_location)
VALUES
    (2, 'Tom', 'Fisk', 'tom.fisk@baeldung.com', 'Palo Alto'),
    (3, 'Linda', 'Miller', 'linda.miller@baeldung.com', 'Chicago'),
    (2, 'Tom', 'Fisk', 'tom.fisk@baeldung.com', 'Palo Alto'),
    (3, 'Linda', 'Miller', 'linda.miller@baeldung.com', 'Chicago'),
    (2, 'Tom', 'Fisk', 'tom.fisk@baeldung.com', 'Palo Alto');
