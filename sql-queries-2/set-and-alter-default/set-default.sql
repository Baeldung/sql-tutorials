-- Creating a table with default
CREATE TABLE Course
(
    id            VARCHAR(10) PRIMARY KEY NOT Null,
    name          VARCHAR(60),
    textbook      VARCHAR(100),
    credits       INT,
    is_active     VARCHAR(10) DEFAULT 'Yes',
    department_id INT,
    CONSTRAINT course_department_id_fkey FOREIGN KEY (department_id) REFERENCES Department (id),
    UNIQUE (id)
);

-- Insertion without column
INSERT INTO Course (id, name, textbook, credits, department_id)
VALUES ('CS111-2', 'Introduction to Operating Systems II', 'OS by Tanenbaum', 7, '1');

-- Query to check the default
SELECT *
FROM Course
WHERE id = 'CS111-2';