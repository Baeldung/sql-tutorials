SELECT id, name, CASE
    WHEN LENGTH(name) > 13
    THEN SUBSTRING(name, 2, LENGTH(name) - 2)
    ELSE name
END AS new_name, LENGTH(name) AS name_length FROM Course ORDER BY name_length;
