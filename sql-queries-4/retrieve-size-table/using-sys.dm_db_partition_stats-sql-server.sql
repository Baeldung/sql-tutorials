SELECT
    t.name AS table_name,
    SUM(a.total_pages) * 8 AS total_space_kb,
    SUM(a.used_pages) * 8 AS used_space_kb,
    (SUM(a.total_pages) - SUM(a.used_pages)) * 8 AS unused_space_kb
FROM
    sys.tables t
INNER JOIN
    sys.indexes i ON t.object_id = i.object_id
INNER JOIN
    sys.partitions p ON i.object_id = p.object_id AND i.index_id = p.index_id
INNER JOIN
    sys.allocation_units a ON p.partition_id = a.container_id
GROUP BY
    t.name
ORDER BY
    total_space_kb DESC;
