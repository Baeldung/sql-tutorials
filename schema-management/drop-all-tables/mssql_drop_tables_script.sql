DECLARE @sql NVARCHAR(MAX) = '';
SELECT @sql += 'DROP TABLE ' + QUOTENAME(table_schema) + '.' + QUOTENAME(table_name) + ';' + CHAR(13)
FROM information_schema.tables
WHERE table_type = 'base table'
AND table_schema = 'vendor_a';

EXEC sp_executesql @sql;