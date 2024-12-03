-- find the IDs of the direct and indirect prerequisites
WITH RECURSIVE required(id) AS (
    SELECT prerequisite_id
    FROM Prerequisite WHERE course_id = 'CS411'
    
    UNION DISTINCT

    SELECT prerequisite_id
    FROM Prerequisite 
    JOIN required 
    ON (Prerequisite.course_id = required.id)
)
SELECT *
FROM required;

-- find the paths (from a prerequisite to CS411
WITH RECURSIVE required(id, path) AS ( 
    SELECT prerequisite_id,
           CONCAT(prerequisite_id, '->', course_id))
    FROM Prerequisite
    WHERE course_id = 'CS411' 
    
    UNION DISTINCT
    
    SELECT prerequisite_id,
           CONCAT(prerequisite_id, '->', path)
    FROM Prerequisite
    JOIN required
    ON (Prerequisite.course_id = required.id)
)
SELECT path
FROM required;

-- paths with casting
WITH RECURSIVE required(id, path) AS ( 
    SELECT prerequisite_id,
           CAST(CONCAT(prerequisite_id, '->', course_id) AS CHAR(50))
    FROM Prerequisite
    WHERE course_id = 'CS411' 
    
    UNION DISTINCT
    
    SELECT prerequisite_id,
           CONCAT(prerequisite_id, '->', path)
    FROM Prerequisite
    JOIN required
    ON (Prerequisite.course_id = required.id)
)
SELECT path
FROM required;

-- changing the types
ALTER TABLE Prerequisite
DROP FOREIGN KEY prerequisite_course_id_fkey,
DROP FOREIGN KEY prerequisite_prerequisite_id_fkey;

ALTER TABLE Prerequisite
MODIFY COLUMN prerequisite_id CHAR(5),
MODIFY COLUMN course_id CHAR(5);

-- reverting the changes
ALTER TABLE Prerequisite
MODIFY COLUMN prerequisite_id VARCHAR(10),
MODIFY COLUMN course_id VARCHAR(10);

ALTER TABLE Prerequisite
ADD CONSTRAINT prerequisite_prerequisite_id_fkey
    FOREIGN KEY Prerequisite(prerequisite_id)
    REFERENCES Course(id),
ADD CONSTRAINT prerequisite_course_id_fkey
    FOREIGN KEY Prerequisite(course_id)
    REFERENCES Course(id);
