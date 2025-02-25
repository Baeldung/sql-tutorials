SELECT
    ENGINE,
    SUM(table_rows) 'Total Number Of ROWS',
    FORMAT_BYTES(SUM(data_length)) 'Total Table DATA',
    FORMAT_BYTES(SUM(index_length)) 'Total Index DATA',
    FORMAT_BYTES(SUM(data_length) + SUM(index_length)) 'Total Size'
    FROM information_schema.TABLES 
    WHERE TABLE_SCHEMA IN ('university')
    GROUP BY engine
    ORDER BY SUM(DATA_length) DESC;
