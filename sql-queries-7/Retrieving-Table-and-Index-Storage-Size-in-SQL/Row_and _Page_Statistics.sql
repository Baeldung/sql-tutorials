WITH TableStats AS (
    SELECT 
        table_name,
        table_rows,
        data_length,
        (data_length / NULLIF(table_rows, 0)) AS avg_row_length
    FROM information_schema.tables
    WHERE table_schema = 'University'
        AND table_type = 'BASE TABLE'
        AND table_rows > 0
)
SELECT 
    table_name,
    table_rows,
    ROUND(avg_row_length, 2) AS avg_row_bytes,
    ROUND((data_length / 1024), 2) AS data_size_kb
FROM TableStats
ORDER BY data_size_kb DESC;