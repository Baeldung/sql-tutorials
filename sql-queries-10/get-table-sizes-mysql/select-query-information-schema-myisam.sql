SELECT
  TABLE_NAME AS `TABLE NAME`,
  Engine,
  table_rows AS `Number of Rows`,
  AVG_ROW_LENGTH AS `Average Row Length`,
  FORMAT_BYTES(DATA_LENGTH) AS `Data Length`,
  FORMAT_BYTES(MAX_DATA_LENGTH) AS `Maximum Data Length`,
  FORMAT_BYTES(INDEX_LENGTH) AS `Index Length`,
  FORMAT_BYTES(DATA_LENGTH + INDEX_LENGTH) AS `Total Size`,
  FORMAT_BYTES(DATA_FREE) AS `Data Free`
FROM
  information_schema.TABLES
WHERE
  TABLE_SCHEMA = "university_myisam"
ORDER BY
  (DATA_LENGTH + INDEX_LENGTH)
DESC;
