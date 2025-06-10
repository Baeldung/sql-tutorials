-- Querying for the specific value column_value
SELECT * FROM table_name WHERE column_name = column_value;

-- Querying for a NULL column_value
SELECT * FROM table_name WHERE column_name IS NULL;

-- Querying for a non-NULL column_value
SELECT * FROM table_name WHERE column_name IS NOT NULL;

-- Querying for specific values column_value_1 and column_value_2
SELECT * FROM table_name WHERE column_name BETWEEN column_value_1 AND column_value_2;

-- Querying for specific values column_value_1 and column_value_2
SELECT * FROM table_name WHERE column_name >= column_value_1 AND column_name <= column_value_2;

-- Querying for specific values column_value_1, column_value_2, column_value_3, and column_value_2
SELECT * FROM table_name WHERE column_name IN (column_value_1, column_value_2, column_value_3, column_value_4);
