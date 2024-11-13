WITH StorageMetrics AS (
    SELECT 
        table_schema,
        SUM(data_length + index_length) / 1024 / 1024 AS total_size_mb,
        COUNT(*) AS table_count,
        SUM(table_rows) AS total_rows
    FROM information_schema.tables
    WHERE table_schema = 'University'
    GROUP BY table_schema
)
SELECT 
    table_schema,
    ROUND(total_size_mb, 2) AS total_size_mb,
    table_count,
    total_rows,
    ROUND(total_size_mb / NULLIF(total_rows, 0) * 1024, 2) AS avg_bytes_per_row
FROM StorageMetrics;