SELECT id, name
FROM department
WHERE IIF(code = 'CS' OR code = 'EC', 1, 0) = 1;