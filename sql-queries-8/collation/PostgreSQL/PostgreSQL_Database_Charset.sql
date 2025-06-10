SELECT datname, pg_encoding_to_char(encoding) AS encoding
FROM pg_database
WHERE datname = current_database();
