SELECT 
    OBJECT_NAME(i.object_id) AS table_name,
    i.name AS index_name,
    i.type_desc AS index_type,
    CAST(8 * SUM(a.used_pages) AS DECIMAL(10,2)) AS index_size_kb
FROM sys.indexes i
INNER JOIN sys.partitions p 
    ON i.object_id = p.object_id 
    AND i.index_id = p.index_id
INNER JOIN sys.allocation_units a 
    ON p.partition_id = a.container_id
WHERE 
    i.object_id > 100
GROUP BY 
    i.object_id,
    i.name,
    i.type_desc
ORDER BY 
    index_size_kb DESC;