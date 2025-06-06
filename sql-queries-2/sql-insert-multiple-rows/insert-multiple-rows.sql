
CREATE TABLE Old_student (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    national_id VARCHAR(255),
    graduation_date DATE
)

INSERT INTO Student (id, name, national_id)
VALUES (1001, 'John Liu', '123345566'),
       (1003, 'Rita Ora', '132345166'),
       (1007, 'Philip Lose', '321345566'),
       (1010, 'Samantha Prabhu', '3217165566');

INSERT INTO Student (id, name, national_id)
SELECT id, name, national_id
FROM Old_student
WHERE graduation_date = '2024-06-15';

