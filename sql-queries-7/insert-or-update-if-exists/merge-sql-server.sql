INSERT INTO Department (id, name, code) VALUES (1, 'Computer Science', 'CS');

MERGE INTO Department AS target
USING (SELECT 1 AS id, 'Computer Science' AS name, 'CSE' AS code) AS source
ON target.id = source.id
WHEN MATCHED THEN
    UPDATE SET name = source.name, code = source.code
WHEN NOT MATCHED THEN
    INSERT (id, name, code) VALUES (source.id, source.name, source.code);

SELECT * from Department;