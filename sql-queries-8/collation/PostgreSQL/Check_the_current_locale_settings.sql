SELECT datname,
       datcollate AS "Collation",
       datctype AS "Character Type"
FROM pg_database
WHERE datname = current_database();
