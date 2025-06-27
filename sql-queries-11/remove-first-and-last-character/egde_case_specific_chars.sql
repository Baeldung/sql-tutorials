SELECT CASE
    WHEN LEFT(name, 1) = 'M' AND RIGHT(name, 1) = 'I'
    THEN SUBSTRING(name, 2, LENGTH(name) - 2)
    ELSE name
END AS new_name FROM Course;
