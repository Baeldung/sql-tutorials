SELECT id, name
FROM department
WHERE CASE
WHEN code = 'CS' THEN 1
WHEN code = 'EC' THEN 1
ELSE 0
END = 1;