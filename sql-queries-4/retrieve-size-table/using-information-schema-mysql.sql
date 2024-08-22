SELECT
    table_schema AS 'Database',
    table_name AS 'Table',
    ROUND((data_length + index_length) / 1024 / 1024, 2) AS 'Size (MB)'
FROM
    information_schema.tables
WHERE
    table_schema = 'University'
ORDER BY
    (data_length + index_length) DESC;
