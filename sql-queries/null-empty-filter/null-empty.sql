INSERT INTO Department VALUES(1, 'Computer Science', 'CS'); 
INSERT INTO Department VALUES(2, 'Mechanical Engineering', 'ME'); 
INSERT INTO Department VALUES(3, 'Psychology', ''); 
INSERT INTO Department VALUES(4, 'Statistics', NULL);

SELECT id, name from Department WHERE code IS NULL OR code = '';
SELECT id, name from Department WHERE code IS NULL OR TRIM(code) = '';
SELECT id, name from Department WHERE TRIM(COALESCE(code, '')) = '';
SELECT id, name from Department WHERE NULLIF(TRIM(code), '') IS NULL;